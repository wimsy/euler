require 'pp'

def digital_sum n
  n.to_s.split("").map{|item| item.to_i}.inject(0) {|sum, digit| sum + digit}
end

limit = 100

# pp digital_sum 145

candidates = []

for a in 1..limit
  for b in 1..limit
    sum = digital_sum(a**b)
    candidates << sum
#    pp [a, b, sum]
  end
end

pp candidates.max
