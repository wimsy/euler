

i = 3
fibTerm = [1, 1, 2]

while fibTerm[2].to_s.split("").length < 1000
  fibTerm[0] = fibTerm[1]+fibTerm[2]
  fibTerm.rotate!
  i +=1
end

puts fibTerm
puts i
