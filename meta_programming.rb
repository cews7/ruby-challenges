require 'pry'
class Thing
  attr_reader :name 
  def initialize(name = nil)
    @name  = name
    @woman = false
    @man   = false
  end

  def is_a
    self
  end

  def person
    @person = true
  end

  def man
    @womman.eql?(true) ? @man = false : @man = true
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
jane.name # => 'Jane'
binding.pry
jane.is_a.person
jane.is_a.man

jane.person? # => true
jane.man? # => false
