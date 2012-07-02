class Integer
  def factorial
    (1..self).reduce(:*)
  end
end

# puts 5.factorial

i = 3
sum = 0
# puts 145.to_s.split("").map {|x| x.to_i.factorial }.inject(0){|sum,item| sum + item}

while true
#  puts i
#  puts i.to_s.split("").map {|x| x.to_i.factorial }.inject(0){|sum,item| sum + item}

  if i == i.to_s.split("").map {|x| x.to_i.factorial }.inject(0){|sum,item| sum + item}
    sum += i
    puts sum
  end
  i += 1
  while i.to_s.match(/0/)
    i += 1
  end
  if (i+1)%10000 == 0
    puts i+1
  end
  
end
