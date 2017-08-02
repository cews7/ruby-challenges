require 'pry'
def jaden_case(string)
  broken_string = string.split("")
  jaden = broken_string.map.with_index do |char, index|
    if index == 0
      char.upcase
    elsif broken_string[index - 1] == " "
      char.upcase
    else
      char
    end
  end
  print jaden.join
end

jaden_case("hello this is a test")
