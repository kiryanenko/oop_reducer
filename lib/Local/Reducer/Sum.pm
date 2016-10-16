package Local::Reducer::Sum; {
	use strict;
	use warnings;
	use parent 'Local::Reducer';
	
	sub reduce {
		my ($self) = @_;
		
		if (my $el = $self->{source}->next()) {
			if (my $row = $self->{row_class}->new(str => $el)->get($self->{field})) {
				return $self->reduced( $self->reduced() + $row );
			} else {
				return $row; # вернет undef т.к. $default не был указан
			}
		} else {
			return undef;
		}
	}
	
}

1;
