module PrimesTables
  def self.run!
    primes = Util.generate_primes(10)
    table = Table.new(primes)
    display table.to_s
  end

  def self.display(string)
    puts string
  end
end

require 'primes_tables/util'
require 'primes_tables/table'
