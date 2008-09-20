#!perl -T

use Test::More;
eval "use Test::Pod::Coverage 1.04";
plan skip_all => 'Test::Pod::Coverage 1.04 required for testing POD coverage' if $@;
plan skip_all => 'Set the TEST_POD environment variable to run these tests' if not exists $ENV{TEST_POD};
all_pod_coverage_ok( { also_private => [ qr/\A[[:upper:][:digit:]_]+\z/ ], trustme => [ 'new' ] } );

# vim:ft=perl:
