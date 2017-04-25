module PrimesTables
  def self.run!
    primes = Util.generate_primes(number_of_primes)
    table = Table.new(primes)
    display table.to_s
  end

  def self.display(string)
    puts string
  end

  def self.number_of_primes
    num_primes = 10

    OptionParser.new do |opts|
      opts.on('--count X', Integer) do |c|
        num_primes = c if c > 0
      end
    end.parse!

    num_primes
  end
end

require 'optparse'
require 'primes_tables/util'
require 'primes_tables/table'
