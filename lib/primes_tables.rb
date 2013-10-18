class PrimesTables
  def self.prime?(n)
    return false if n == 1
    return true if n == 2

    2.upto(Math.sqrt(n).ceil) do |x|
      return false if n % x == 0
    end

    true
  end
end
