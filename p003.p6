=begin comment
    Project Euler
    Problem: 3
    Title: Largest prime factor
    Description:
The prime factors of 13195 are 5, 7, 13 and 29.
What is the largest prime factor of the number 600851475143 ?
=end comment

use v6;

my $largest = 1;
my $f = 2;
my $div = 600851475143;
until $div <= $largest {
    if ( $f.is-prime ) {
        if ( $div % $f == 0 ) {
            $div /= $f;
            $largest = $f;
        }
    }
    $f++;
}
say "My answer:\n" ~ $largest;


############################
## Answers

# Gerhard R
say "Gerhard R. answer:";
sub largest-prime-factor($n is copy) {
    for 2, 3, *+2 ... * {
        while $n %% $_ {
            $n div= $_;
            return $_ if $_ > $n;
        }
    }
}
say largest-prime-factor(600_851_475_143);

# Eric Hodges
say "Eric Hodges answer:";
sub is_prime ($num) {
    for (2..^$num) {
        return 0 unless $num % $_;
    }
    return 1;
};

class Primes {
    has $.current = 0;

    method next {
        $!current++;
        $!current++ until is_prime($.current);
        return $.current;
    }
}

my $prime = Primes.new();
my $number = 600851475143;
my @primes = gather while ($number > 1) {
    if !($number % $prime.next) {
        $number /= $prime.current;
        take $prime.current;
    }
}

say @primes.max;

