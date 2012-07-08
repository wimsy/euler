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

def quad_eqn n, a, b
  return n*n + a*n + b
end

primes = sieve_of_eratosthenes(1000000)

max_count = [0,0,0]
for a in -1000..1000
  for b in -1000..1000
    count = 0
    for n in 0..79
      num = quad_eqn(n, a, b)
      if num > 1 && primes[num]
        count += 1
        if count > max_count[2]
          max_count = [a,b,count]
        end
      else
        break
      end
    end
  end
end

pp max_count
pp max_count[0]*max_count[1]
        
        

  
