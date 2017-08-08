def sum_two_digits(list, sum)  
  match_values = 0, 0
  if list.length == 0
  else
    counter = 1
    while counter < list.length
      match_values = list[0], list[counter]
      if match_values.compact.reduce(:+).eql?(sum)
        print match_values
      end
      counter += 1
    end
    sum_two_digits(list[1..-1], sum)
  end
end
list_of_ints = [1, 8, 2, 4, 5, 7]
sum_two_digits(list_of_ints, 10)
