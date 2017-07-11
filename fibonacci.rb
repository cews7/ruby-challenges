#find the n number in the fibonacci sequence 
require 'pry'

class Fibonacci
  attr_reader :number
  def initialize(number)
    @number = number
  end

  def execute(number)
    return 0 if number == 0
    return 1 if number == 1
    return execute(number-1)+execute(number-2)
  end
end

fibonacci = Fibonacci.new(1)
fibonacci.execute(fibonacci.number)
