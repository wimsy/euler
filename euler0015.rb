# eulerproject.net #15
# assume the problem is basically a combination problem of 40 pick 20

def factorial_reduce(num)
  (1..num).reduce(:*)
end

n = 40
r = 20

numOptions = factorial_reduce(n)/(factorial_reduce(n-r)*factorial_reduce(r))
puts numOptions

