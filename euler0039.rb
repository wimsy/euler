require 'pp'

def perimeter a, b, c
  a + b + c
end

def max_hypotenuse perim
  perim % 2 == 0 ? perim/2-1 : (perim-1)/2
end

def min_hypotenuse perim
  perim % 3 == 0 ? perim/3+1 : perim/3+1
end

def is_right_triangle? a, b, c
  a*a + b*b == c*c
end

a = 0
b = 0
c = 0
perim = 0
counts = [0]

while perim < 1000
  perim +=1
  counts[perim]=0
  c = max_hypotenuse perim
  c_min = min_hypotenuse c
#  pp perim
#  pp c

  while c >= c_min
    b = c - 1
    a = perim - c - b
    while a <= b
      if is_right_triangle? a,b,c
        counts[perim] += 1 
      end
      b -= 1
      a = perim - c - b
    end
    c -= 1
  end
  pp perim
  pp counts[perim]
end

puts "\n"
pp counts.max
pp counts.index(counts.max)

    
  