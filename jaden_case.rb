require 'pry'
def jaden_case(string)
  broken_string = string.split("")
  jaden = []
  broken_string.each_with_index do |char, index|
    if index == 0
      jaden << char.upcase
    elsif broken_string[index - 1] == " "
      jaden << char.upcase
    else
      jaden << char
    end
  end
  print jaden.join
end

jaden_case("hello this is a test")
