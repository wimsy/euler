def triangle_numbers limit
  nums = [1]
  n = 2
  while n <= limit
    nums << (0.5*n*(n+1)).to_i
    n+=1
  end
  nums
end

def pentagonal_numbers limit
  nums = [1]
  n = 2
  while n <= limit
    nums << (n*(3*n-1)/2).to_i
    n+=1
  end
  nums
end

def hexagonal_numbers limit
  nums = [1]
  n = 2
  while n <= limit
    nums << (n*(2*n-1)).to_i
    n+=1
  end
  nums
end

tlimit = 286*1000
plimit = 166*1000
hlimit = 144*1000

tnums = triangle_numbers tlimit
pnums = pentagonal_numbers plimit
hnums = hexagonal_numbers hlimit

puts tnums & pnums & hnums
puts tnums.length

