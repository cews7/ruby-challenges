#make a pyramid of stars, that's n tall

#incremment the number of stars to print per row
#n number of rows. with each row adding two stars
def pyramid(n)
  count = 2
  n.times do
    print " " * n-=1
    puts "x" * count
    count += 2
  end
end

pyramid(6)
