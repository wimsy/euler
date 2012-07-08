pow = 5
limit = 354294
numbers = []

class Integer
  def decompose_digits
    self.to_s.split("").map {|d| d.to_i}
  end
end

def pow_sum_of_digits digits, pow
  digits.inject(0) {|sum, digit| sum + digit**pow}
end

def sum_of_digits_to_power_equals_number n, pow
  n == pow_sum_of_digits(n.decompose_digits,pow)
end

# puts sum_of_digits_to_power_equals_number 1634, pow
# puts sum_of_digits_to_power_equals_number 1635, pow

for i in 2..limit
  if sum_of_digits_to_power_equals_number i, pow
    numbers << i
  end
end

puts numbers.inject(0) {|sum, n| sum + n }
