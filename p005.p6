=begin comment
    Project Euler
    Problem: 5
    Title: Smallest multiple
    Description:
2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
=end comment

use v6;

my $t1 = now;

my $v = 20;
my $c = 0;
until $c >= 20 {
    for 1..20 -> $k {
        if ( $v % $k == 0 ) {
            $c++;
        } else {
            $c = 0;
            last;
        }
    }
    $v++;
}

say "My answer:\n" ~ ( $v-1 ) ~ " timed: " ~ ( now - $t1 );



############################3
## Answers

# David Romano
say "David Romano answer:";
my @numbers = 2..20;
my @factors = @numbers;
my %factor;
for @numbers -> $num is rw {
    for @factors -> $factor is rw {
        next if $num % $factor;
        my $exp = 0;
        while $num div= $factor { $exp++; }
        if !%factor{$factor} || %factor{$factor} < $exp {
            %factor{$factor} = $exp;
        };
    }
}
say [*] %factor.map({ .key**.value });

# Konrad Borowski
say "Konrad Borowski answer:";
say [lcm] 1..20;
