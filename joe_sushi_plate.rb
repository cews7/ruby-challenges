#Input: 'rrrrr rrrrr' Output: 16
#Input: 'rr'  Output: 4
#Input: 'rr rrr' Output: 8
require 'pry'
def total_cost(plates)
  price = 0
  plate_counter = 0
  plates.chars.each do |char|
    plate_counter += 1
    if plate_counter % 5 == 0 || char == ' '
      price
    else
      price += 2
    end
  end
  print price
end

total_cost('rrrrrr r')
