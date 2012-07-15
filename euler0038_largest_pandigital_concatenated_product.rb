require 'pp'

class Integer
  def pandigital?
    n_str = self.to_s.split("").sort.join("")
    pan_str = ""
    for i in 1..n_str.length
      pan_str << i.to_s
    end
    n_str == pan_str
  end
end

candidates = []

for n in 2..9 do
  num_str = ""
  multiplicand = 1
  while num_str.length <= 9
    num_str = ""
    for j in 1..n
      num_str << (multiplicand*j).to_s
#      pp [n, j, multiplicand, num_str]
    end
    if num_str.length == 9 && num_str.to_i.pandigital?
      candidates << num_str.to_i
    end
    multiplicand += 1
  end
end

pp candidates.max
