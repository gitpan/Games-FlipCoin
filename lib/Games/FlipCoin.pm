package Games::FlipCoin;

use warnings;
use strict;
use Carp;
use Exporter;

our @ISA = qw(Exporter);
our $error = "";
our @EXPORT;

@EXPORT = qw(
	flip
);

sub flip{
  my ( %args ) = @_;
	
	my $bias = 0;
	$bias = $args{'bias'}/2 if exists $args{'bias'} && $args{'bias'} > 0;

	my $toss = int ( (int( rand(100) ) + 1) + ( $bias * 100 ) );
	
	if( $toss > 50 ){
	  return 1;
	}else{
	  return 0;
	}
}

=head1 NAME

Games::FlipCoin - Simulates a coin flip

=head1 VERSION

Version 1.00

=cut

our $VERSION = '1.00';

=head1 SYNOPSIS

 use Games::FlipCoin;

 $outcome = flip(); # A fair result
 $outcome = flip( bias => 0 ); # Also a fair result 
 $outcome = flip( bias => .05 ); # give a 5% bias to the 1 result
 $outcome = flip( bias => .99 ); # give a 99% bias to the 1 result
 $outcome = flip( bias => 1 );   # this coin only has a single result, 100% bias

=head1 DESCRIPTION

Games::FlipCoin is a simple library that simulates the flip of a coin and returns the outcome as either 0 or 1. 
The coin is normally unbiased.  However, to simulate a biased coin, a bias factor can be passed to the flip()
subroutine which will bias the coin toward the 1 result.

=head1 EXPORTS

 flip
 
=head1 FUNCTIONS

 flip( [bias => percentage of bias ] )

=head1 AUTHOR

Troy Denkinger, C<< <tdenkinger at gmail.com> >>

=head1 BUGS

Please report any bugs or feature requests to
C<bug-games-flipcoin at rt.cpan.org>, or through the web interface at
L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Games-FlipCoin>.
I will be notified, and then you'll automatically be notified of progress on
your bug as I make changes.

=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc Games::FlipCoin

You can also look for information at:

=over 4

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/Games-FlipCoin>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/Games-FlipCoin>

=item * RT: CPAN's request tracker

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=Games-FlipCoin>

=item * Search CPAN

L<http://search.cpan.org/dist/Games-FlipCoin>

=back

=head1 COPYRIGHT & LICENSE

Copyright 2006 Troy Denkinger, all rights reserved.

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.

=cut

1; # End of Games::FlipCoin
