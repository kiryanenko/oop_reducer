package Local::Source; {
	use strict;
	use warnings;

	sub new {
		my ($class, %params) = @_;
		my $self = bless \%params, $class;
		$self->start_again;
		return $self;
	}
	
	sub next_iter {
		my ($self) = @_;
		return $self->{iter}++;
	}
	
	sub start_again {
		my ($self) = @_;
		$self->{iter} = 0;
	}
}

1;
