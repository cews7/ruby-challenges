require 'pry'
class Thing
  attr_reader :name
  def initialize(name = nil)
    @name  = name
    @woman = false
    @man   = false
    @name_of_child = ''
  end

  def is_a
    self
  end

  def speak(string)
    "#{name} says: #{string}"
  end

  def person
    @person = true
  end

  def man
    @woman.eql?(true) ? @man = false : @man = true
  end

  def woman
    @man.eql?(true) ? @woman = false : @woman = true
  end

  def person?
    @person
  end

  def man?
    @man
  end

  def woman?
    @woman
  end
end

jane = Thing.new('Jane')
jane.name
binding.pry
jane.is_a.person
jane.is_a.man

jane.person?
jane.man?

jane.is_the.parent_of.joe
jane.parent_of # => 'joe'
