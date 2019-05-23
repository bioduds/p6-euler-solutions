=begin comment
    Project Euler
    Problem: 10
    Title: Summation of Primes
    Description: 
  
    The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
    Find the sum of all the primes below two million.

=end comment

use v6;

## timer of solution
my $t1 = now;
my $answer = 0;
say "Running...";

for 1..2000000 -> $n {
  if $n.is-prime { $answer += $n; }
}

say "My answer:\n $answer \ntimed: " ~ ( now - $t1 );



############################
## Answers

# [Answer by Nayuki - https://github.com/nayuki/Project-Euler-solutions/blob/master/Answers.txt]
say "Nayuki answer: ---";
# [Answer by luckytoilet - https://github.com/luckytoilet/projecteuler-solutions/blob/master/Solutions.md
say "luckytoilet answer: ---";

