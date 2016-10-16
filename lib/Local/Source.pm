package Local::Source; {
	use strict;
	use warnings;

	sub new {
		my ($class, %params) = @_;
		return bless \%params, $class;
	}
}

1;
