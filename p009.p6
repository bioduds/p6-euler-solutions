=begin comment
    Project Euler
    Problem: 9
    Title: Special Pythagorean Problem
    Description: 
    
    A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
    a² + b² = c²
    For example, 3² + 4² = 9 + 16 = 25 = 5².
    There exists exactly one Pythagorean triplet for which a + b + c = 1000.
    Find the product abc.

=end comment

use v6;

## timer of solution
my $t1 = now;
my $answer;
say "Running...";

my $done = False;
for 1..1000 -> $a { if $done { last; }
  for 1..1000 -> $b { if $done { last; }
    for 1..1000 -> $c { if $done { last; }
      if ( ( $a < $b < $c ) ) && ( $a + $b + $c == 1000 ) && ( $a² + $b² == $c² ) {
        say "Found $a $b $c";
        $answer = $a * $b * $c;
        $done = True; 
        last;
      }
    }
  }
}

say "My answer:\n $answer \ntimed: " ~ ( now - $t1 );

############################
## Answers

# [Answer by Nayuki - https://github.com/nayuki/Project-Euler-solutions/blob/master/Answers.txt
say "Nayuki answer: ---";
# [Answer by luckytoilet - https://github.com/luckytoilet/projecteuler-solutions/blob/master/Solutions.md
say "luckytoilet answer: ---";

