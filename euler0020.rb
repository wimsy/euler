def factorial_reduce(num)
  (1..num).reduce(:*)
end

n = 100

facString = factorial_reduce(n).to_s

puts(facString)

puts facString.split("").inject(0){|sum,item| sum + item.to_i}
