# starting at 0, find the first 25 numbers that have this same characteristic where the palindrome is greater than 1000

def mirror(first_number)
  first_number.to_s.reverse.to_i
end

n = []
i = 0
while (n.length < 25)
  second_number = mirror(i)
  palindrome = i + second_number
  if palindrome > 1000 && palindrome == mirror(palindrome)
    n << [i, second_number, palindrome]
  end
  i += 1
end

p n
