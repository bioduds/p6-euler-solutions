=begin comment
    Project Euler
    Problem: 7
    Title: 10001st prime
    Description: 
        By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
        What is the 10 001st prime number?
=end comment

use v6;

## timer of solution
my $t1 = now;
my $answer;

my $c = 0;
for 1..* -> $n {
    if $n.is-prime { $c++; }
    if $c == 10001 { $answer = $n; last; }
}

say "My answer:\n $answer \ntimed: " ~ ( now - $t1 );


############################
## Answers

# [Answer by Nayuki - https://github.com/nayuki/Project-Euler-solutions/blob/master/Answers.txt]
say "Nayuki answer: 104743";
