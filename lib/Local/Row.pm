package Local::Row; {
	use strict;
	use warnings;
	
	# Функция парсит строку и возвращает разобобранную структуру
	sub parse { return shift }
	
	sub new {
		my ($class, %params) = @_;
		my %struct = (
			struct => $class->parse($params{str})
		);
		my $obj = bless \%struct, $class;
		return $obj;
	}
	
	sub get {
		my ($self, $name, $default) = @_;
		return $default unless exists $self->{struct}->{$name};
		return $self->{struct}->{$name};
	}
}

1;
