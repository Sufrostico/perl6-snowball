use v6;

use Test;
use lib 'lib';

use Lingua::Stem::Snowball;


my $stemmer = sb_stemmer_new('spanish', 'UTF_8');
my $result  = sb_stemmer_stem($stemmer, "computación",  13);

sb_stemmer_delete($stemmer);

ok $result, "comput";

$stemmer = sb_stemmer_new('english', 'UTF_8');
$result  = sb_stemmer_stem($stemmer, "computer",  9);

sb_stemmer_delete($stemmer);

ok $result, "comput";

$stemmer = sb_stemmer_new('portuguese', 'UTF_8');
$result  = sb_stemmer_stem($stemmer, "computador",  10);

sb_stemmer_delete($stemmer);

ok $result, "comput";

done-testing;
