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

$limit = 10000

$numbers = sieve_of_eratosthenes($limit)
$primes = $numbers.select {|k,v| v}.keys
$odd_composites = $numbers.select {|k,v| !v && k%2==1}.keys
#pp $odd_composites[0..6]

$odd_composites.each do |num|
	pp ["num", num]
	$primes.select {|v| v < num}.reverse_each do |prime|
		delta = num - prime
		break if (Math.sqrt(delta/2.0))%1 == 0
        if prime == 2
        	pp ["final num", num]
            exit
        end
	end
end
