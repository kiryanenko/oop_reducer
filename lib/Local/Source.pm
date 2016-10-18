package Local::Source; {
	use strict;
	use warnings;

	sub new {
		my ($class, %params) = @_;
		$params{iter} = 0; 	# Текущая иитерация
		return bless \%params, $class;
	}
	
	sub next_iter {
		my ($self) = @_;
		return $self->{iter}++;
	}
}

1;
