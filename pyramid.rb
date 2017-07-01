#make a pyramid of stars, that's n tall
def pyramid(n)
  count = 2
  n.times do
    print " " * n-=1
    puts "x" * count
    count += 2
  end
end

pyramid(14)
