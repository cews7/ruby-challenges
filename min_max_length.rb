a = [1,3,-1,4,5,10]
class Nums
  def self.min_max_length(ints)
    min    = ints[0]
    max    = ints[0]
    length = 0
    ints.each do |int|
      max = int if int > max
      min = int if int < min
      length += 1
    end
    p max, min, length
  end
end

Nums.min_max_length(a)
