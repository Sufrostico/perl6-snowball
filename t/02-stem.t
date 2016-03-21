use v6;

use Test;
use Lingua::Stem::Snowball;

# English.
my $stemmer = sb_stemmer_new('english', 'UTF_8');
my $result = sb_stemmer_stem($stemmer, "computer", "computer".chars);
ok $result eq "comput", 'English is ok';
sb_stemmer_delete($stemmer);

# Spanish.
$stemmer = sb_stemmer_new('spanish', 'UTF_8');
$result  = sb_stemmer_stem($stemmer, "computación", "computación".chars+1); # Since we have a "ó" symbol.
ok $result eq "comput", 'Spanish is ok';
sb_stemmer_delete($stemmer);

# # Purtuguese.
$stemmer = sb_stemmer_new('portuguese', 'UTF_8');
$result  = sb_stemmer_stem($stemmer, "computador", "computador".chars);
ok $result eq "comput", 'Portuguese is ok';
sb_stemmer_delete($stemmer);

# # Russian.
$stemmer = sb_stemmer_new('russian', 'UTF_8');
# TODO: fix "Malformed termination of UTF-8 string" bug(emacs bug?)
# $result  = sb_stemmer_stem($stemmer, "компьютер", "компьютер".chars);
sb_stemmer_delete($stemmer);
# ok $result eq "компьютер";

done-testing;
