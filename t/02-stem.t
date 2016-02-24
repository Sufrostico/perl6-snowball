use v6;

use Test;

plan 1;

use Lingua::Stem::Snowball;


my $stemmer = sb_stemmer_new('es', 'utf-8');

# const sb_symbol *   sb_stemmer_stem(struct sb_stemmer * stemmer, const sb_symbol * word, int size);
my $resultado = sb_stemmer_stem($stemmer, "computación", 12 );

sb_stemmer_delete($stemmer);

ok $resultado, "comput";

done-testing;
