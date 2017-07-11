# v.validate("([{}[]])")

require 'pry'
class String
  def self.evaluate(string)
    if string.length == 0
      puts "valid"
    elsif string[0] == '[' && string[-1] != (']')
      return false
    elsif string[0] == ('{') && string[-1] != ('}')
      return false
    elsif string[0] == ('(') && string[-1] != (')')
      return false
    else
      return evaluate(string[1..-2])
    end
  end
end
  a = "([])"
  String.evaluate(a)
