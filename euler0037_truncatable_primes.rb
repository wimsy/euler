require 'pp'

def sieve_of_eratosthenes limit
  set_of_numbers = Hash.new
  for i in 2..limit
    set_of_numbers[i] = true
  end  
  for i in 2..Math.sqrt(limit).floor
    if set_of_numbers[i] == true
      j = i*i
      while (j<=limit) do
        set_of_numbers[j] = false
        j += i
      end
    end
  end
  set_of_numbers
end

def test_trunc_left numstr
#  pp numstr
  num_trunc = numstr.to_i
  if numstr == ""
    return true
  elsif !$primes.include? num_trunc
    return false
  elsif $memo_nums_left[num_trunc] == nil
    $memo_nums_left[num_trunc] = test_trunc_left numstr.split("").rotate.join("").chop
  end
  return $memo_nums_left[num_trunc]
#  return test_trunc_left num_trunc
end

def test_trunc_right numstr
  num_trunc = numstr.to_i
  if numstr == ""
    return true
  elsif !$primes.include? num_trunc
    return false
  elsif $memo_nums_right[num_trunc] == nil
    $memo_nums_right[num_trunc] = test_trunc_right numstr.chop
  end
  return $memo_nums_right[num_trunc]
#  return test_trunc_right num_trunc
end

$memo_nums_left = []
$memo_nums_right = []  
count = sum = 0
limit = 1000000
$primes_hash = sieve_of_eratosthenes limit
$primes = $primes_hash.select {|k,v| v}.keys
nums = []

$primes.each do |num|
  next if ["0","1","4","6","8","9"].include? num.to_s.split("").first
  next if ["0","1","4","6","8","9"].include? num.to_s.split("").last
#  pp num
  if test_trunc_left(num.to_s.split("").rotate.join("").chop) && test_trunc_right(num.to_s.chop)
    count += 1
    sum += num
    nums << num
    pp num
  end
end

pp count - 4
pp sum -2-3-5-7
pp nums[4..-1]

