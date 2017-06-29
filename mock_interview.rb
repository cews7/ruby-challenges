# starting at 0, find the first 25 numbers that have this same characteristic where the
# palindrome is greater than 1000

# your code goes here

# [ [1,1,2], [2,2,4], [3,3,6], [4,4,8], ... ]

# []
# return the first mirrors and the sum value.
def mirror(first_number)
  first_number.to_s.reverse.to_i
end

n = []
i = 0
while (n.length < 25)
  # start checking mirrors of each number, starting at zero, adding both. If sum results in a palindrome over 1000
  # 47 plus its reverse (47 => 74) add together to a number (121) which is a palindrome
  second_number = mirror(i)
  palindrome = i + second_number
  if palindrome > 1000 && palindrome == mirror(palindrome)
    n << [i, second_number, palindrome]
  end
  i += 1
end

p n
