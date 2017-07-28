require 'pry'
def reverse_string(string)
  r_s = []
  string.split('').each do |char|
    r_s.unshift(char)
  end
  print r_s.join
end

reverse_string("hello")
