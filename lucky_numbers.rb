def lucky_numbers(list)
  lucky_numbers = []
  list.each do |num|
    lucky_numbers << num if num.to_s.include?("7")
  end
  p lucky_numbers
end

numbers = [1,2,77,76,3344,787]
lucky_numbers(numbers)
