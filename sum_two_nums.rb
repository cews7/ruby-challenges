require 'pry'
def sum_two_digits(list, sum)
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
end

list_of_ints = [1, 8, 9, 4, 5, 7]
sum_two_digits(list_of_ints, 10)
# => 8, 2
