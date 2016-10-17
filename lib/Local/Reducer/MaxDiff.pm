package Local::Reducer::MaxDiff; {
	use strict;
	use warnings;
	use parent 'Local::Reducer';
	
	sub reduce {
		my ($self) = @_;
		
		return undef unless my $el = $self->{source}->next();
		
		my $row = $self->{row_class}->new(str => $el);
		return undef unless defined (my $top = $row->get($self->{top})) && 	# undef т.к. $default не был указан
			defined (my $buttom = $row->get($self->{bottom}));
			
		my $diff = abs($buttom - $top);
		return $diff > $self->reduced() ? $self->{reduced} = $diff : $self->reduced();
	}
	
}

1;
