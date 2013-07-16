use strict;
use warnings;

use Data::Dumper;

use Test::More tests => 2;
BEGIN { use_ok('npc::config') };

my $config = npc::config->new();
my $test_config = $config->get_config('test');
is($test_config->{'is_test'}, '__YES__', "Return test config" );


