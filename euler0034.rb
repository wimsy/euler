class Integer
  def factorial
    if self == 0 
      1
    else
      (1..self).reduce(:*)
    end
  end
end

limit = 2540160
i = 3
sum = 0

while i < limit
  if i == i.to_s.split("").map {|x| x.to_i.factorial }.inject(0){|sum,item| sum + item}
    sum += i
    puts sum
  end
  i += 1
  if (i+1)%100000 == 0
    puts i+1
  end
end

puts sum
