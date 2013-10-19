module PrimesTables
  class Util
    def self.prime?(n)
      return false if n == 1
      return true if n == 2

      2.upto(Math.sqrt(n).ceil) do |x|
        return false if n % x == 0
      end

      true
    end

    def self.next_prime(n)
      x = n
      loop do
        x += 1
        break if prime?(x)
      end
      x
    end

    def self.generate_primes(n)
      result = [2]
      return result if n == 1

      for i in 2 .. n do
        result.push next_prime(result[i - 2])
      end
      result
    end
  end
end
