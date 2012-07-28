require 'pp'
require 'prime'

num_factors = 4
count = 0
num = 2
nums = []

while count < num_factors
  if Prime.prime_division(num).length >= num_factors
    count += 1
    nums << num
  else
    count = 0
    nums = []
  end
  num += 1
end

pp nums
