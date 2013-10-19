# Funding Circle Tech Test

Write a program that calculates and prints out a multiplication table of the first 10 calculated prime numbers.


## Requirements

* The program must run from the command line and print to screen 1 table.
* Across the top and down the left side should be the 10 primes, and the body of the table should contain the product of multiplying these numbers.
* Please include tests.
* Think about cases where the code doesn't know the upper limit (maybe it's 30 and not 10 primes?)
* Think about code complexity.
* Don't use the Ruby prime method.
* Impress me :-)


## Dependencies

Ruby 2.0 is required which can be installed using [rbenv](https://github.com/sstephenson/rbenv) or similar.

The testing framework is installed through [Bundler](http://bundler.io/):

	gem install bundler
	bundle install


## Running the tests

	bundle exec rspec


## Running the application

The application is run with the ``primes_tables.rb`` script in the top-level directory. Output should be:

	$ ./primes_tables.rb
	      2   3   5   7  11  13  17  19  23  29
	  2   4   6  10  14  22  26  34  38  46  58
	  3   6   9  15  21  33  39  51  57  69  87
	  5  10  15  25  35  55  65  85  95 115 145
	  7  14  21  35  49  77  91 119 133 161 203
	 11  22  33  55  77 121 143 187 209 253 319
	 13  26  39  65  91 143 169 221 247 299 377
	 17  34  51  85 119 187 221 289 323 391 493
	 19  38  57  95 133 209 247 323 361 437 551
	 23  46  69 115 161 253 299 391 437 529 667
	 29  58  87 145 203 319 377 493 551 667 841
