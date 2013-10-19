module PrimesTables
  class Table
    attr_accessor :result, :input

    def initialize(input)
      @input = input

      @result = Array.new(input.size) { Array.new(input.size) }
      input.each_with_index do |x, i|
        input.each_with_index do |y, j|
          @result[i][j] = x * y
        end
      end
    end

    def to_s
      highest_value = result.flatten.sort.last
      columns_per_item = highest_value.to_s.size

      output = []

      initial_space = " " * (columns_per_item + 1)
      top_row  = initial_space + input.map { |n| "%#{columns_per_item}s" % n }.join(' ')
      output << top_row

      result.each_with_index do |row, i|
        row_with_key = row.dup.unshift input[i]
        output << row_with_key.map { |n| "%#{columns_per_item}s" % n }.join(' ')
      end

      output.join("\n")
    end
  end
end
