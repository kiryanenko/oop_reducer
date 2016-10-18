package Local::Row::JSON; {
	use strict;
	use warnings;
	use parent 'Local::Row';
	use JSON::XS;	
	
	sub parse {
		my $self = shift;
		my $str = shift;
		return JSON::XS->new->utf8->decode($str);
	}
}

1;
