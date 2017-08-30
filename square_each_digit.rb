def square_it num
  num.to_s.chars.each do |num|
    print num.to_i ** 2
  end
end

square_it 9119
