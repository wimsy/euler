require 'pp'

def is_prime n
  for i in 2..Math.sqrt(n)
    return false if n % i == 0
  end
  return true
end


def pandigitals n, start
  pand_str = ""
  for i in start..n
    pand_str << i.to_s
  end
  (pand_str.chars.to_a.permutation.map &:join).map { |x| x.to_i }
end

primes = [2,3,5,7,11,13,17]
sum = 0
pands = pandigitals(9,0).select {|v| v.to_s.length == 10}

pp pands.length

pands.each do |v|
  v_str = v.to_s
#  pp v if v_str[7..9] == '210'
  special = true
  for i in (1..7)
    special = false if v_str[i..i+2].to_i % primes[i-1] != 0
  end
  sum += v if special
end

pp sum
