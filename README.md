# Funding Circle Tech Test

Write a program that prints a multiplication table of primes numbers.

The program should take an argument from the command line that specifies the amount of prime numbers to generate and print out a multiplication table for these prime numbers.

An example of the way the application may run:

	<executable_script_name> --count 10

An example of the output (using the [terminal-table](https://github.com/tj/terminal-table) gem):


	   |  2   3   5   7  11  13  17  19  23  29
	---+---------------------------------------
	 2 |  4   6  10  14  22  26  34  38  46  58
	 3 |  6   9  15  21  33  39  51  57  69  87
	 5 | 10  15  25  35  55  65  85  95 115 145
	 7 | 14  21  35  49  77  91 119 133 161 203
	11 | 22  33  55  77 121 143 187 209 253 319
	13 | 26  39  65  91 143 169 221 247 299 377
	17 | 34  51  85 119 187 221 289 323 391 493
	19 | 38  57  95 133 209 247 323 361 437 551
	23 | 46  69 115 161 253 299 391 437 529 667
	29 | 58  87 145 203 319 377 493 551 667 841


## Notes

1. Consider code readability/complexity
2. Consider SOLID principles, but do not over­engineer
3. Consider extensibility
4. Feel free to use any library or gem in both implementation and tests, but please write your own code for the prime number generator.
5. Consider how you can prove the correctness of your application
6. Write it in Ruby


## Dependencies

Ruby 2.4.1 is required which can be installed using [rbenv](https://github.com/sstephenson/rbenv) or similar.

The testing framework is installed through [Bundler](http://bundler.io/):

	gem install bundler
	bundle install


## Running the tests

	bundle exec rspec
