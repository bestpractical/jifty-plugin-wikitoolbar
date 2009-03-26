use strict;
use warnings;

package Jifty::Plugin::WikiToolbar;
use base qw/Jifty::Plugin/;

our $VERSION = '0.9';

=head1 NAME

Jifty::Plugin::WikiToolbar - Jifty plugin to add a wiki toolbar to your textarea box

=head1 SYNOPSIS

In etc/config.yml

   Plugins:
     - WikiToolbar: {}

In your Model instead of 

   render_as 'textarea';

use

  render_as 'Jifty::Plugin::WikiToolbar::Textarea';

To custom the toolbar, copy wikitoolbar.js in your application, at the end of the file put your changes with addButton function.

=head1 DESCRIPTION

Add a toolbar to your textarea field. Default toolbar provide markdown markup syntax. http://daringfireball.net/projects/markdown/

=head1 METHOD

=head2 init

load wikitoolbar.js on startup

=cut

sub init {
    my $self = shift;
    Jifty->web->javascript_libs([
    @{ Jifty->web->javascript_libs },
    "wikitoolbar.js",
    ]);
}

=head1 AUTHOR

Yves Agostini, <yvesago@cpan.org>

=head1 LICENSE

Copyright 2007-2008 Yves Agostini. All Rights Reserved.

This program is free software and may be modified and distributed under the same terms as Perl itself.

=cut

1;
