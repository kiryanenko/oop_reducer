package Local::Reducer::MaxDiff; {
	use strict;
	use warnings;
	use parent 'Local::Reducer';
	
	sub reduce {
		my ($self) = @_;
		
		if (my $el = $self->{source}->next()) {
			my $row = $self->{row_class}->new(str => $el);
			if ((my $top = $row->get($self->{top})) && 
				(my $buttom = $row->get($self->{bottom}))) {
				my $diff = abs($buttom - $top);
				$diff > $self->reduced() ? $self->reduced( $diff ) : $self->reduced();
			} else {
				return $row; # вернет undef т.к. $default не был указан
			}
		} else {
			return undef;
		}
	}
	
}

1;
