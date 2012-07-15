require 'pp'

def factorial_reduce(num)
  (1..num).reduce(:*)
end

def c_n_r n, r
  factorial_reduce(n)/(factorial_reduce(r)*factorial_reduce(n-r))
end

#pp c_n_r 23, 14
$count = 0

for n in 23..100
#  pp n
  r = n/2
  c = c_n_r n, r
  i = 0
  while c > 1000000
    c = c_n_r(n, r+i)
    $count += 1 if c > 1000000
    i += 1
  end
  c = c_n_r n, r
  i = 1
  while c > 1000000
    c = c_n_r n, r-i
    $count += 1 if c > 1000000
    i += 1
  end
end

pp $count