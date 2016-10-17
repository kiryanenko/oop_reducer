package Local::Row; {
	use strict;
	use warnings;
	
	# Функция парсит строку и возвращает разобобранную структуру
	sub parse {}
	
	sub new {
		my ($class, %params) = @_;
		
		my $obj = bless \%params, $class;
		$obj->parse();
		delete $params{str};
		return $obj;
	}
	
	sub get {
		my ($self, $name, $default) = @_;
		return $default unless exists $self->{struct}->{$name};
		return $self->{struct}->{$name};
	}
}

1;
