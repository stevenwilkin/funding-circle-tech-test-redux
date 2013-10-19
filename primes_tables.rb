#!/usr/bin/env ruby

$: << 'lib' unless $:.member? 'lib'

require 'primes_tables'

PrimesTables.run!
