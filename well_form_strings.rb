# v.validate("([{}[]])")

require 'pry'
class String
  # def self.validate(input)
  #   input.chars.each_with_index do |open_bracket, outer_index|
  #     relevant_position = 0
  #     closer = []
  #     opener = []
  #     opener << open_bracket
  #     input.chars.each_with_index do |close_bracket, inner_index|
  #       closer = []
  #       if inner_index > outer_index
  #         closer << close_bracket
  #         relevant_position += 1
  #       end
  #     end.pop(input.chars.length-relevant_position)
  #     p 'invalid' if closer[-1] != opener[0]
  #     p 'valid'   if closer[-1] == opener[0]
  #   end.pop
  # end

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
