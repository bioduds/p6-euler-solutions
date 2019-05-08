=begin comment
    Project Euler
    Problem: 6
    Title: Sum Square Difference
    Description:
        The sum of the squares of the first ten natural numbers is,
        1^2 + 2^2 + ... + 10^2 = 385
        The square of the sum of the first ten natural numbers is,
        (1 + 2 + ... + 10)^2 = 55^2 = 3025
        Hence the difference between the sum of the squares of the first ten natural numbers and the square of the
        sum is 3025 − 385 = 2640.
        Find the difference between the sum of the squares of the first one hundred natural numbers and
        the square of the sum.
=end comment

use v6;

## timer of solution
my $t1 = now;
my $answer;

my $sa = 0; my $sb = 0;
for 1..100 -> $n {
#    say "Running $n";
    $sa += $n²;
    $sb += $n;
}
$answer = $sb² - $sa;

say "My answer:\n $answer \ntimed: " ~ ( now - $t1 );



############################
## Answers

# Ash on https://github.com/ash/projecteuler
say "Ash's answer:";
$t1 = now;
say ([+] 1..100) ** 2 - [+] (1..100).map: * ** 2;
say "Ash timed: " ~ ( now - $t1 );

## code..
