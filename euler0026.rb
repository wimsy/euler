def evalRemainder (remainder, denominator)
  return (remainder*10) % denominator
end

maxPattern = [0, 0];

i = 1000

while i > 1 do
  
  if maxPattern[1]>i
    break
  end
  
  remainders = []
  nextRemainder = 1

  while !remainders.include?(nextRemainder) do
    remainders << nextRemainder
    nextRemainder = evalRemainder(remainders.last, i)
  end

  if remainders.length > maxPattern[1]
    maxPattern = [i, remainders.length]
  end
  
  i-=1
  
end

print "The maximum pattern length is at " + maxPattern[0].to_s \
+ " with a length of " + maxPattern[1].to_s
