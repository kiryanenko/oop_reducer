package Local::Reducer::Sum; {
	use strict;
	use warnings;
	use parent 'Local::Reducer';
	
	sub reduce {
		my ($self) = @_;
		
		return undef unless my $el = $self->{source}->next();
		
		return undef unless my $row = $self->{row_class}->new(str => $el)->get($self->{field});	# undef т.к. $default не был указан
				
		return $self->{reduced} += $row ;
	}
	
}

1;
