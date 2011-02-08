# --
# Webservice.t - Webservice tests
# Copyright (C) 2001-2011 OTRS AG, http://otrs.org/
# --
# $Id: Webservice.t,v 1.2 2011-02-08 16:34:07 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see L<http://www.gnu.org/licenses/agpl.txt>.
# --

use utf8;
use Kernel::System::GenericInterface::Webservice;

my $WebserviceObject = Kernel::System::GenericInterface::Webservice->new( %{$Self} );

my @Tests = (
    {
        Name          => 'test 1',
        SuccessAdd    => 1,
        SuccessUpdate => 1,
        Config        => {
            Name        => 'Nagios',
            Description => 'Connector to send and recive date from Nagios.',
            Provider    => {
                Transport => {
                    Module => 'Kernel::GenericInterface::Transport::HTTP::SOAP',
                    Config => {
                        NameSpace  => '',
                        SOAPAction => '',
                        Encoding   => '',
                        Endpoint   => '',
                    },
                },
                Operation => [
                    {
                        Mapping => {
                            Inbound => {
                                1 => 2,
                                2 => 4,
                            },
                            Outbound => {
                                1 => 2,
                                2 => 5,
                            },
                        },
                    },
                    {
                        Mapping => {
                            Inbound => {
                                1 => 2,
                                2 => 4,
                            },
                            Outbound => {
                                1 => 2,
                                2 => 5,
                            },
                        },
                    },
                ],
            },
            Requester => {
                Transport => {
                    Module => 'Kernel::GenericInterface::Transport::HTTP::SOAP',
                    Config => {
                        NameSpace  => '',
                        SOAPAction => '',
                        Encoding   => '',
                        Endpoint   => '',
                    },
                },
                Invokers => [
                    {
                        Mapping => {
                            Inbound => {
                                1 => 2,
                                2 => 4,
                            },
                            Outbound => {
                                1 => 2,
                                2 => 5,
                            },
                        },
                    },
                    {
                        Mapping => {
                            Inbound => {
                                1 => 2,
                                2 => 4,
                            },
                            Outbound => {
                                1 => 2,
                                2 => 5,
                            },
                        },
                    },
                ],
            },
        },
        ValidID => 1,
        UserID  => 1,
    },
    {
        Name          => 'test 2',
        SuccessAdd    => 1,
        SuccessUpdate => 1,
        Config        => {
            Name        => 'Nagios',
            Description => 'Connector to send and recive date from Nagios 2.',
            Provider    => {
                Transport => {
                    Module => 'Kernel::GenericInterface::Transport::HTTP::SOAP',
                    Config => {
                        NameSpace  => '!"§$%&/()=?Ü*ÄÖL:L@,.-',
                        SOAPAction => '',
                        Encoding   => '',
                        Endpoint =>
                            'iojfoiwjeofjweoj ojerojgv oiaejroitjvaioejhtioja viorjhiojgijairogj aiovtq348tu 08qrujtio juortu oquejrtwoiajdoifhaois hnaeruoigbo eghjiob jaer89ztuio45u603u4i9tj340856u903 jvipojziopeji',
                    },
                },
                Operation => [
                    {
                        Mapping => {
                            Inbound => {
                                1 => 2,
                                2 => 4,
                            },
                            Outbound => {
                                1 => 2,
                                2 => 5,
                            },
                        },
                    },
                    {
                        Mapping => {
                            Inbound => {
                                1 => 2,
                                2 => 4,
                            },
                            Outbound => {
                                1 => 2,
                                2 => 5,
                            },
                        },
                    },
                ],
            },
            Requester => {
                Transport => {
                    Module => 'Kernel::GenericInterface::Transport::HTTP::REST',
                    Config => {
                        NameSpace => '',
                        Encoding  => '',
                        Endpoint  => '',
                    },
                },
                Invokers => [
                    {
                        Mapping => {
                            Inbound => {
                                1 => 2,
                                2 => 4,
                            },
                            Outbound => {
                                1 => 2,
                                2 => 5,
                            },
                        },
                    },
                ],
            },
        },
        ValidID => 2,
        UserID  => 1,
    },
    {
        Name          => 'test 3',
        SuccessAdd    => 0,
        SuccessUpdate => 0,
        ValidID       => 1,
        UserID        => 1,
    },
    {
        Name          => 'test 4',
        SuccessAdd    => 1,
        SuccessUpdate => 0,
        Config        => {
            Name        => 'Nagios',
            Description => 'Connector to send and recive date from Nagios 2.',
            Provider    => {},
            Requester   => {
                Transport => {
                    Module => 'Kernel::GenericInterface::Transport::HTTP::REST',
                    Config => {
                        NameSpace => '',
                        Encoding  => '',
                        Endpoint  => '',
                    },
                },
            },
        },
        ValidID => 2,
        UserID  => 1,
        Update  => undef,
    },
    {
        Name          => 'test 4',
        SuccessAdd    => 0,
        SuccessUpdate => 0,
        Config        => {
            Name        => 'Nagios',
            Description => 'Connector to send and recive date from Nagios 2.',
            Provider    => {},
            Requester   => {
                Transport => {
                    Module => 'Kernel::GenericInterface::Transport::HTTP::REST',
                    Config => {
                        NameSpace => '',
                        Encoding  => '',
                        Endpoint  => '',
                    },
                },
            },
        },
        ValidID => 2,
        UserID  => 1,
        Update  => undef,
    },
);

my @WebServiceIDs;
for my $Test (@Tests) {

    # add config
    my $WebServiceID = $WebserviceObject->WebserviceAdd(
        Name    => $Test->{Name},
        Config  => $Test->{Config},
        ValidID => $Test->{ValidID},
        UserID  => $Test->{UserID},
    );
    if ( !$Test->{SuccessAdd} ) {
        $Self->False(
            $WebServiceID,
            "$Test->{Name} - WebserviceAdd()",
        );
        next;
    }
    else {
        $Self->True(
            $WebServiceID,
            "$Test->{Name} - WebserviceAdd()",
        );
    }

    # remember id to delete it later
    push @WebServiceIDs, $WebServiceID;

    # get config
    my %Webservice = $WebserviceObject->WebserviceGet(
        ID     => $WebServiceID,
        UserID => 1,
    );

    # verify config
    $Self->Is(
        $Test->{Name},
        $Webservice{Name},
        "$Test->{Name} - WebserviceGet()",
    );
    $Self->IsDeeply(
        $Test->{Config},
        $Webservice{Config},
        "$Test->{Name} - WebserviceGet() - Config",
    );

    # update config with a modification
    if ( exists $Test->{Update} ) {
        $Test->{Config} = $Test->{Update};
    }
    my $Success = $WebserviceObject->WebserviceUpdate(
        ID      => $WebServiceID,
        Name    => $Test->{Name},
        Config  => $Test->{Config},
        ValidID => $Test->{ValidID},
        UserID  => $Test->{UserID},
    );
    if ( !$Test->{SuccessUpdate} ) {
        $Self->False(
            $Success,
            "$Test->{Name} - WebserviceUpdate()",
        );
        next;
    }
    else {
        $Self->True(
            $Success,
            "$Test->{Name} - WebserviceUpdate()",
        );
    }

    # get config
    %Webservice = $WebserviceObject->WebserviceGet(
        ID     => $WebServiceID,
        UserID => 1,
    );

    # verify config
    $Self->Is(
        $Test->{Name},
        $Webservice{Name},
        "$Test->{Name} - WebserviceGet()",
    );
    $Self->IsDeeply(
        $Test->{Config},
        $Webservice{Config},
        "$Test->{Name} - WebserviceGet() - Config",
    );
}

# delete config
for my $WebServiceID (@WebServiceIDs) {
    my $Success = $WebserviceObject->WebserviceDelete(
        ID     => $WebServiceID,
        UserID => 1,
    );
    $Self->True(
        $Success,
        'WebserviceDelete()',
    );
}

1;
