package Local::Reducer::Sum; {
	use strict;
	use warnings;
	use parent 'Local::Reducer';
	
	sub reduce {
		my ($self) = @_;
		
		my $el = $self->{source}->next() or return;
		
		my $row = $self->{row_class}->new(str => $el)->get($self->{field});
		return unless defined $row;
				
		return $self->{reduced} += $row ;
	}
	
}

1;
