package Local::Source::Text; {
	use strict;
	use warnings;
	BEGIN{
		if ($] < 5.018) {
			package experimental;
			use warnings::register;
		}
	}
	no warnings 'experimental';
	use parent 'Local::Source::Array';
	
	sub new {
		my ($class, %params) = @_;
		my $delimiter = defined $params{delimiter} ? $params{delimiter} : "\n";
		return $class->SUPER::new( array => [split $delimiter, $params{text}] );
	}
}

1;
