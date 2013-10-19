module PrimesTables
  class Table
    attr_accessor :result

    def initialize(input)
      @result = Array.new(input.size) { Array.new(input.size) }
      input.each_with_index do |x, i|
        input.each_with_index do |y, j|
          @result[i][j] = x * y
        end
      end
    end
  end
end
