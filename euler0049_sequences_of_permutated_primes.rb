require 'pp'
require 'mathn'

def permute_and_check_for_primes num
  nums = (num.to_s.chars.to_a.permutation.map &:join).map { |x| x.to_i }.sort
  nums.select! {|n| n.prime? && n > 999}
  return nums unless nums.length < 3
  return nil
end

def find_arith_sequence nums
  nums.each do |num|
    nums.each do |num2|
      diff = num2 - num
      if diff > 0 && nums.include?(num2 + diff)
        return [num, num2, num2 + diff]
      end
    end
  end
  return nil
end

base_nums = [1487]

Prime.each(9999) do |num|
  numbers = permute_and_check_for_primes(num) if num > 999
  if numbers.kind_of?(Array) && !base_nums.include?(numbers.min)
    sequence_array = find_arith_sequence numbers if numbers.kind_of? Array
    unless sequence_array == nil
      pp (sequence_array.map {|value| value.to_s}).join("").to_i
      base_nums << numbers[0]
#      pp base_nums
    end
  end
end

