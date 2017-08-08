#take all possibilities of the given string and present them as elements in alphabetical order -- print total number of sequences
require 'pry'
def organize_characters(string)
  #get all permutations of "abc"
  collector = []
  sorted = false
  until sorted
    random = string.split('').shuffle.join
    collector << random unless collector.include?(random)
    if collector.length.eql?(18)
      sorted = true
    end
  end
  puts collector, + " ", + collector.length
end

organize_characters("abc")
# => ["abc", "acb", "bac", "bca", "cab", "cba"]
# => 6
