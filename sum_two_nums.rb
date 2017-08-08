def sum_two_digits(list, sum)
  #ASSUMPTIONS
  #always ints?
  #always positive?
  #will the sum change?
  #will there always be two nums that add to sum?

  #PSUEDO CODE
  #iterate over list looking for first possible canidatate
  #compare said canidatate against all other ints in list
  #check if first canidatate can find match that adds up to sum
  #if check finds match, return each num in list (assume two ints to start)
  #if not, move on to next first canidatate consideration
  #repeat

  #implementation
  require 'pry'
  match_values = 0, 0
  only_nums = list.reject { |elem| elem.kind_of?(String) }
  only_nums.each_with_index do |i, outer|
    only_nums.each_with_index do |j, inner|
      match_values = i, j
      if match_values.reduce(:+).eql?(sum) && !outer.eql?(inner)
        print match_values.join(',') unless outer < inner
      end
    end
  end
  print 'no match found' if !match_values.reduce(:+).eql? sum 
end

list_of_ints = [1, 8, "balls", 4, 5, 7]
sum_two_digits(list_of_ints, 10)
# => 8, 2
