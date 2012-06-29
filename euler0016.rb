number = 2**1000
numArray = number.to_s.split("").collect { |i| i.to_i }
sum = numArray.reduce(:+)
puts(numArray.length)
puts(numArray)
#puts(number)
puts(sum)