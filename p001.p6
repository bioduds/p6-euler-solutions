=begin comment
    Project Euler
    Problem: 1
    Title: Multiples of 3 and 5
    Description: If we list all the natural numbers below 10 that are multiples of 3 or 5,
    we get 3, 5, 6 and 9. The sum of these multiples is 23. Find the sum of all the multiples
    of 3 or 5 below 1000.
=end comment

use v6;

# bitworkers
my $sum = 0;
for 1..^1000 -> $v {
    if ( $v%3==0 or $v%5==0 ) {
        $sum += $v;
    }
}
say "My Answer: " ~ $sum;

############################3
## Answers

# cspence
say "Correct Answer:";
(1..^1000).grep({ ! ($^a % 3 and $^a % 5) }).reduce({ $^a + $^b }).say;

# David Romano
#say [+] (1..^1000).grep: { !($_ % (3&5)) };

# Hershberger
#say [+] gather {
#    for (1..999) {
#        take $_ if $_ % 3 == 0 || $_ % 5 == 0;
#    }
#}

