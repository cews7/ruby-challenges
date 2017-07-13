require 'pry'
def is_alt(string)
  characters = string.split("")
  valid      = true
  characters.each_with_index do |char, index|
    if char.include?("a" || "e" || "i" || "o" || "u") && characters[index + 1].eql?("a" || "e" || "i" || "o" || "u")
      valid = false
    elsif char.eql?("b" || "c" || "d" || "f" || "g" || "h" || "j" || "k" || "l" || "m" || "n" || "p" || "q" || "s" || "t" || "v") &&
      characters[index + 1].eql?("b" || "c" || "d" || "f" || "g" || "h" || "j" || "k" || "l" || "m" || "n" || "p" || "q" || "s")
      valid = false
    end
  end
  p valid
end

is_alt("quit")
# => true
