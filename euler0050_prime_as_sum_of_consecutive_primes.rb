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

def is_prime n
  for i in 2..Math.sqrt(n)
    return false if n % i == 0
  end
  return true
end

def add_primes down_sum, index
  if index >= $primes.length then return 0, 0 end
  down_sum = down_sum + $primes[index]
  if down_sum >= $limit then return 0, 0 end
#  puts down_sum
  sum, count = add_primes down_sum, index+1
  if count > 0 || is_prime(down_sum)
    return sum + $primes[index], count + 1
  else
    return 0, 0
  end
end


$limit = 1000000

$primes = sieve_of_eratosthenes($limit).select {|k,v| v}.keys
#pp $primes
max_count = 0
prime_sum = 0

$primes.each_index do |index|
  sum, count = add_primes(0, index)
#  pp [$primes[index], count]
  if count > max_count 
    max_count = count
    prime_sum = sum
  end
  break if $primes[index] * max_count > $limit
end

pp [max_count, prime_sum]

    