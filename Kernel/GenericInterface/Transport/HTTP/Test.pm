# --
# Kernel/GenericInterface/Transport/HTTP/Test.pm - GenericInterface network transport interface for testing
# Copyright (C) 2001-2011 OTRS AG, http://otrs.org/
# --
# $Id: Test.pm,v 1.11 2011-02-14 14:39:15 mg Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::GenericInterface::Transport::HTTP::Test;

use strict;
use warnings;

use LWP::UserAgent;
use LWP::Protocol;
use HTTP::Request::Common;

use Kernel::System::Web::Request;

use vars qw(@ISA $VERSION);
$VERSION = qw($Revision: 1.11 $) [1];

=head1 NAME

Kernel::GenericInterface::Transport::Test

=head1 SYNOPSIS

GenericInterface network transport interface for testing purposes.

=head1 PUBLIC INTERFACE

=over 4

=item new()

create an object.

    use Kernel::Config;
    use Kernel::System::Encode;
    use Kernel::System::Log;
    use Kernel::System::Time;
    use Kernel::System::Main;
    use Kernel::System::DB;
    use Kernel::GenericInterface::Debugger;
    use Kernel::GenericInterface::Transport::HTTP::Test;

    my $ConfigObject = Kernel::Config->new();
    my $EncodeObject = Kernel::System::Encode->new(
        ConfigObject => $ConfigObject,
    );
    my $LogObject = Kernel::System::Log->new(
        ConfigObject => $ConfigObject,
        EncodeObject => $EncodeObject,
    );
    my $TimeObject = Kernel::System::Time->new(
        ConfigObject => $ConfigObject,
        LogObject    => $LogObject,
    );
    my $MainObject = Kernel::System::Main->new(
        ConfigObject => $ConfigObject,
        EncodeObject => $EncodeObject,
        LogObject    => $LogObject,
    );
    my $DBObject = Kernel::System::DB->new(
        ConfigObject => $ConfigObject,
        EncodeObject => $EncodeObject,
        LogObject    => $LogObject,
        MainObject   => $MainObject,
    );
    my $DebuggerObject = Kernel::GenericInterface::Debugger->new(
        ConfigObject   => $ConfigObject,
        EncodeObject   => $EncodeObject,
        LogObject      => $LogObject,
        MainObject     => $MainObject,
        DebuggerObject => $DebuggerObject,
    );
    my $TransportObject = Kernel::GenericInterface::Transport::HTTP::Test->new(
        ConfigObject       => $ConfigObject,
        LogObject          => $LogObject,
        DBObject           => $DBObject,
        MainObject         => $MainObject,
        TimeObject         => $TimeObject,
        EncodeObject       => $EncodeObject,

        TransportConfig => {
            Type => 'HTTP::Test',
            Config => {
                Fail => 0,  # 0 or 1
            },
        },
    );

In the config parameter 'Fail' you can tell the transport to simulate
failed network requests. If 'Fail' is set to 0, the transport will return
the query string of the requests as return data (see L<RequesterPerformRequest>
for an example);

=cut

sub new {
    my ( $Type, %Param ) = @_;

    my $Self = {};
    bless( $Self, $Type );

    for my $Needed (
        qw(LogObject EncodeObject ConfigObject MainObject DebuggerObject TransportConfig)
        )
    {
        $Self->{$Needed} = $Param{$Needed} || return {
            Success      => 0,
            ErrorMessage => "Got no $Needed!"
        };
    }

    return $Self;
}

sub ProviderProcessRequest {
    my ( $Self, %Param ) = @_;

    if ( $Self->{TransportConfig}->{Config}->{Fail} ) {
        return {
            Success      => 0,
            ErrorMessage => "HTTP status code: 500",
            Data         => {},
        };
    }

    my $ParamObject = Kernel::System::Web::Request->new(%$Self);

    my %Result;

    for my $ParamName ( $ParamObject->GetParamNames() ) {
        $Result{$ParamName} = $ParamObject->GetParam( Param => $ParamName );
    }

    if ( !%Result ) {
        return $Self->{DebuggerObject}->Error(
            Summary => 'No request data found.',
        );
    }

    return {
        Success   => 1,
        Data      => \%Result,
        Operation => 'test_operation',
    };

}

sub ProviderGenerateResponse {
    my ( $Self, %Param ) = @_;

    if ( $Self->{TransportConfig}->{Config}->{Fail} ) {
        return {
            Success      => 0,
            ErrorMessage => 'Test response generation failed',
        };
    }

    my $Response;

    if ( !$Param{Success} ) {
        $Response
            = HTTP::Response->new( 500 => ( $Param{ErrorMessage} || 'Internal Server Error' ) );
        $Response->protocol('HTTP/1.0');
        $Response->content_type("text/plain; charset=UTF-8");
        $Response->date(time);
    }
    else {

        # generate a request string from the data
        my $Request
            = HTTP::Request::Common::POST( 'http://testhost.local/', Content => $Param{Data} );

        $Response = HTTP::Response->new( 200 => "OK" );
        $Response->protocol('HTTP/1.0');
        $Response->content_type("text/plain; charset=UTF-8");
        $Response->add_content_utf8( $Request->content );
        $Response->date(time);
    }

    $Self->{DebuggerObject}->Debug(
        Summary => 'Sending HTTP response',
        Data    => $Response->as_string(),
    );

    # now send response to client
    print STDOUT $Response->as_string();

    return {
        Success => 1,
    };
}

=item RequesterPerformRequest()

in Fail mode, returns error status. Otherwise, returns the
query string generated out of the data for the HTTP response.

    my $Result = $TransportObject->RequesterPerformRequest(
        Data => {
            A => 'A',
            b => 'b',
        },
    );

Returns

    $Result = {
        Success => 1,
        Data => {
            ResponseData => 'A=A&b=b',
        },
    };

=cut

sub RequesterPerformRequest {
    my ( $Self, %Param ) = @_;

    if ( $Self->{TransportConfig}->{Config}->{Fail} ) {
        return {
            Success      => 0,
            ErrorMessage => "HTTP status code: 500",
            Data         => {},
        };
    }

    # use custom protocol handler to avoid sending out real network requests
    LWP::Protocol::implementor(
        testhttp => 'Kernel::GenericInterface::Transport::HTTP::Test::CustomHTTPProtocol'
    );
    my $UserAgent = LWP::UserAgent->new();
    my $Response = $UserAgent->post( 'testhttp://localhost.local/', Content => $Param{Data} );

    return {
        Success => 1,
        Data    => {
            ResponseContent => $Response->content,
        },
    };
}

=back

=begin Internal:

=cut

=head1 NAME

Kernel::GenericInterface::Transport::HTTP::Test::CustomHTTPProtocol

=head1 SYNOPSIS

This package is used to handle the custom HTTP requests of
Kernel::GenericInterface::Transport::HTTP::Test.
The requests are immediately answered with a response, without
sending them out to the network.

=cut

package Kernel::GenericInterface::Transport::HTTP::Test::CustomHTTPProtocol;

use base qw(LWP::Protocol);

sub new {
    my $Class = shift;
    return $Class->SUPER::new(@_);
}

sub request {
    my $Self = shift;
    my ( $Request, $Proxy, $Arg, $Size, $Timeout ) = @_;

    my $Response = HTTP::Response->new( 200 => "OK" );
    $Response->protocol('HTTP/1.0');
    $Response->content_type("text/plain; charset=UTF-8");
    $Response->add_content_utf8( $Request->content );
    $Response->date(time);

    #print $Request->as_string;
    #print $Response->as_string;

    return $Response;
}

1;

=end Internal:

=head1 TERMS AND CONDITIONS

This software is part of the OTRS project (L<http://otrs.org/>).

This software comes with ABSOLUTELY NO WARRANTY. For details, see
the enclosed file COPYING for license information (AGPL). If you
did not receive this file, see L<http://www.gnu.org/licenses/agpl.txt>.

=cut

=head1 VERSION

$Revision: 1.11 $ $Date: 2011-02-14 14:39:15 $

=cut
