class Array
  def self.flatten(array)
    result = []
    array.each do |n|
      if n.is_a? Array
        n.each do |y|
          result << y
        end
      else
        result << n
      end
    end
    p result
  end
end

b = [1,2,[5,4], [3], [1]]
Array.flatten(b)
