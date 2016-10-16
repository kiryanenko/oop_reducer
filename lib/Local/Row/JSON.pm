package Local::Row::JSON; {
	use strict;
	use warnings;
	use parent 'Local::Row';
	use JSON::XS;	
	
	sub parse {
		my $self = shift;
		
		$self->{struct} = JSON::XS->new->utf8->decode($self->{str});
	}
}

1;
