use FindBin;
use lib "$FindBin::Bin/lib";
BEGIN{
	if ($] < 5.018) {
		package experimental;
		use warnings::register;
	}
}
no warnings 'experimental';
use Local::Source::Array;
use Local::Reducer::Sum;
use Local::Row::Simple;
use Local::Source::Text;
use Local::Reducer::MaxDiff;
use Local::Row::JSON;

my $reducer = Local::Reducer::Sum->new(
    field => 'price',
    source => Local::Source::Array->new(array => [
        '{"price": 1}',
        '{"price": 2}',
        '{"price": 3}',
    ]),
    row_class => Local::Row::JSON,
    initial_value => 0,
);

print $reducer->reduce_n(1);
print $reducer->reduce_all();

$reducer = Local::Reducer::MaxDiff->new(
    top => 'received',
    bottom => 'sended',
    source => Local::Source::Text->new(text =>"sended:1024,received:2048\nsended:2048,received:10240\nsended:0,received:10240"),
    row_class => Local::Row::Simple,
    initial_value => 0,
);

print $reducer->reduce_all();
