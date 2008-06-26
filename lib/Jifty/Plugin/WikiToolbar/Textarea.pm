package Jifty::Plugin::WikiToolbar::Textarea;
use base qw(Jifty::Web::Form::Field::Textarea);

=head1 NAME

Jifty::Plugin::WikiToolbar::Textarea - Textarea widget with a wiki toolbar

=head2 rows

default to 30

=cut

sub rows { 30 };

=head2 render_widget

html widget

=cut

sub render_widget {
    my $self  = shift;
    my $field;
    $field .= qq!<div id='toolbar'></div>!;
    $field .= qq!<textarea!;
    $field .= qq! name="@{[ $self->input_name ]}"!;
    $field .= qq! id="@{[ $self->element_id ]}"!;
    $field .= qq! rows="@{[$self->rows || 5 ]}"!;
    $field .= qq! cols="@{[$self->cols || 60]}"!;
    $field .= $self->_widget_class;
    $field .= qq! >!;
    $field .= Jifty->web->escape($self->current_value) if $self->current_value;
	$field .= qq!</textarea>\n!;
    Jifty->web->out($field);
    '';
}


1;
