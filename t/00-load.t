#!perl -T

use lib( './lib' );
use Test::More tests=>2;

BEGIN {
	use_ok( 'Games::FlipCoin' );
}

diag( "Testing Games::FlipCoin $Games::FlipCoin::VERSION, Perl $], $^X" );

ok( defined flip(), "Making sure the coin was actually flipped" );

