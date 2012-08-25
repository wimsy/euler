require 'pp'

def expand num
  return 2 + 1/num.to_r
end

def calc num
  return 1 + 1/num.to_r
end

seed = 2
count = 0

for i in 1..999
  seed = expand seed
  iter = calc seed
  if iter.numerator.to_s.length > iter.denominator.to_s.length
    count += 1
  end
end

pp count
  




