=begin comment
    Project Euler
    Problem: 4
    Title: Largest palindrome product
    Description:
A palindromic number reads the same both ways. The largest palindrome made from
the product of two 2-digit numbers is 9009 = 91 × 99.

Find the largest palindrome made from the product of two 3-digit numbers.
=end comment

use v6;

my @l = [1, 2, 3];
for 100..999 -> $a {
    for 100..999 -> $b {
        if ( $a*$b ) eq ( $a*$b ).flip {
            @l.push( $a*$b );
        }
    }
}
my @largest = @l.sort.reverse;
say "My answer is:\n" ~ @largest[0];


############################
## Answers

# David Romano
say "David Romano answer:";
sub diagonal_x (@array is copy) {

    gather while @array.shift -> $this {
        for @array -> $that { take $this * $that  }
    }
}

diagonal_x(100...999).grep({ $_ eq $_.flip }).sort.reverse.[0].say;

# Konrad Borowski
say "Konrad Borowski answer:";
my @nums = 100..^1000;
say (@nums X* @nums).grep({.flip eq $_}).max;
