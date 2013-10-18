class PrimesTables
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
end
