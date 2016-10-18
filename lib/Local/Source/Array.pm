package Local::Source::Array; {
	use strict;
	use warnings;
	BEGIN{
		if ($] < 5.018) {
			package experimental;
			use warnings::register;
		}
	}
	no warnings 'experimental';
	use parent 'Local::Source';
	
	sub next {
		my ($self) = @_;
		return $self->{array}[$self->next_iter()];
	}
}

1;
