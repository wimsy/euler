require 'pp'

def min_num_for_length n
  num = "1"
  (n-1).times { num << "0" }
  [num.to_i,2].max
end

one_value = true
values = [1]
exp = 1
root = 2

num = root**exp

while one_value
  root = (min_num_for_length(exp))**(1.0/exp).to_i
  num = root**exp
  pp [root,exp,num.to_s.length]
  until num.to_s.length >= exp
    root += 1
    num = root**exp
  end
  one_value = num.to_s.length > exp ? false : true
  pp one_value
  while num.to_s.length == exp
    values << num
    root += 1
    num = root**exp
    pp [root, exp, num]
  end
  exp += 1
end

pp values.length


=begin
while count < 5
  start = min_num_for_length count
  for i in start..(start*10-1)
    root = i.to_f
    if i**(1.0/root) % 1 == 0
      one_value = true
      values << i
    end
  end
  count += 1
end
=end

pp values.length

pp values
