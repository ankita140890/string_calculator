class StringCalc
  def add(numbers)
    return 0 if numbers.empty?

    delimiter = ",|\n"
    if numbers.start_with?("//")
      parts = numbers.split("\n", 2)
      delimiter = Regexp.escape(parts.first[2..-1])
      numbers = parts.last
    end

    number_list = numbers.split(/#{delimiter}/).map(&:to_i)
    number_list.select! { |num| num <= 1000 } # Remove numbers larger than 1000
    negatives = number_list.select { |n| n < 0 }
    raise "negative numbers not allowed: #{negatives.join(', ')}" if negatives.any?

    number_list.sum

  end
end
