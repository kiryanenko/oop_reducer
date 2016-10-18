package Local::Row::Simple; {
	use strict;
	use warnings;
	use parent 'Local::Row';
	
	sub parse {
		my $self = shift;
		my $str = shift;
		my %struct;
		for (split ',', $str) {
			if (/^\s*(\w+)\s*:\s*(.*)\s*$/) {
				$struct{$1} = $2;
			} else {
				die "Не валидная строка";
			}
		}
		return {%struct};
	}
}

1;
