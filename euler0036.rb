class Fixnum
  def to_base (base=10)
    return self.to_s(base) unless base == 0
    nil
  end
end

limit = 1000000
i = 1
sum = 0

while i < limit
  num_str = i.to_s
  if num_str == num_str.reverse
    num_str_base2 = i.to_base 2
    if num_str_base2 == num_str_base2.reverse
      sum += i
    end
  end
  i += 1
end

puts sum

