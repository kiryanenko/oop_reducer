package Local::Row::Simple; {
	use strict;
	use warnings;
	use parent 'Local::Row';
	
	sub parse {
		my $self = shift;
		
		my %struct;
		for (split ',', $self->{str}) {
			if (/^\s*(\w+)\s*:\s*(.*)\s*$/) {
				$struct{$1} = $2;
			} else {
				die "Не валидная строка";
			}
		}
		$self->{struct} = {%struct};
	}
}

1;
