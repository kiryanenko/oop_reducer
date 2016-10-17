package Local::Reducer; {
use strict;
use warnings;

=encoding utf8

=head1 NAME

Local::Reducer - base abstract reducer

=head1 VERSION

Version 1.00

=cut

our $VERSION = '1.00';

=head1 SYNOPSIS

=cut

	sub new {
		my ($class, %params) = @_;
		$params{reduced} = $params{initial_value};
		return bless \%params, $class;
	}

	sub reduced {
		my $self = shift;
		return $self->{reduced};
	}
	
	# Функция схлопывает следующий элемент
	sub reduce {}

	sub reduce_all {
		my ($self) = @_;
		while (defined $self->reduce()) {}
		return $self->reduced();
	}
	
	sub reduce_n {
		my ($self, $n) = @_;
		for (my $i = 0; $i < $n && defined $self->reduce(); $i++) {}
		return $self->reduced();
	}
}

1;
