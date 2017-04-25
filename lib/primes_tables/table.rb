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
      columns_per_item = highest_value.to_s.size + 1
      columns_per_input = input.last.to_s.size + 1

      output = []

      top_row  = (' ' * columns_per_input) + '|' + input.map { |n| "%#{columns_per_item}s" % n }.join
      underline = ('-' * columns_per_input) + '+' + ('-' * (result.size * columns_per_item))
      output << top_row
      output << underline

      result.each_with_index do |row, i|
        key = "%#{columns_per_input - 1}s" % input[i]
        items = row.map { |n| "%#{columns_per_item}s" % n }.join

        output << "#{key} |#{items}"
      end

      output.join("\n")
    end
  end
end
