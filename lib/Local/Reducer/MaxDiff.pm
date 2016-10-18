package Local::Reducer::MaxDiff; {
	use strict;
	use warnings;
	use parent 'Local::Reducer';
	
	sub reduce {
		my ($self) = @_;
		
		my $el = $self->{source}->next() or return;
		
		my $row = $self->{row_class}->new(str => $el);
		my $top = $row->get($self->{top});
		my $bottom = $row->get($self->{bottom});
		
		return unless defined $top and defined $bottom;
			
		my $diff = abs($bottom - $top);
		return $diff > $self->reduced() ? $self->{reduced} = $diff : $self->reduced();
	}
	
}

1;
