#take all possibilities of the given string and present them as sub arrays in alphabetical order -- print total number of sequences
require 'pry'
def organize_characters(string)
  ord_string = []
  ord_sorted = []
  sorted = false
  until sorted
    counter = 0
    sorted = true
    ord_sorted = string.chars.map.with_index do |char, index|
      if !string[index + 1].nil? && char > string[index + 1]
        sorted = false
        temp = string[index + 1]
        string[index + 1] = char
        string[index] = temp
        char
      end

    end
  end
end

organize_characters("abc")
