package Local::Row; {
	use strict;
	use warnings;
	
	# Функция парсит строку и возвращает разобобранную структуру
	sub parse {}
	
	sub new {
		my ($class, %params) = @_;
		
		my $obj = bless \%params, $class;
		$obj->parse();
		return $obj;
	}
	
	sub get {
		my ($self, $name, $default) = @_;
		my $res = $self->{struct}->{$name};
		return defined $res ? $res : $default;
	}
}

1;
