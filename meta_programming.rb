require 'pry'
class Thing
  attr_accessor :name,
                :woman,
                :man,
                :person
  def initialize(name = nil)
    @name   = name
    @woman  = false
    @man    = false
    @person = false
  end

  def is_a(noun)
    if noun.eql? "man"
      @man = true
    end
  end

  def person?
    if !person.eql? false
      puts "true"
    else
      puts "false"
    end
  end

  def woman?
    if !woman.eql? false
      puts "true"
    else
      puts "false"
    end
  end

  def man?
    if !man.eql? false
      puts "true"
    else
      puts "false"
    end
  end
end

jane = Thing.new('Jane')
binding.pry
jane.name # => 'Jane'

jane.is_a.person
jane.is_a.woman
jane.is_not_a.man

jane.person? # => true
jane.man? # => false
