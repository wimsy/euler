require 'pp'

def rev_and_add n
  n + n.to_s.reverse.to_i
end

def palindrome? n
  n == n.to_s.reverse.to_i
end

def lychrel? n
  iterations = 1
  while iterations <= 50
    sum = rev_and_add n
#    pp sum
    return false if palindrome? sum
    iterations += 1
    n = sum
  end
  return true
end

limit = 9999
count = 0
for i in 1..limit
  count += 1 if lychrel? i
#  pp i
end

pp count

  