# Copyrights 1995-2012 by [Mark Overmeer <perl@overmeer.net>].
#  For other contributors see ChangeLog.
# See the manual pages for details on the licensing terms.
# Pod stripped from pm file by OODoc 2.00.
use strict;

package Mail::Mailer::rfc822;
use vars '$VERSION';
$VERSION = '2.11';

use base 'Mail::Mailer';

sub set_headers
{   my ($self, $hdrs) = @_;

    local $\ = "";

    foreach (keys %$hdrs)
    {   next unless m/^[A-Z]/;

        foreach my $h ($self->to_array($hdrs->{$_}))
        {   $h =~ s/\n+\Z//;
            print $self "$_: $h\n";
        }
    }

    print $self "\n";	# terminate headers
}

1;
