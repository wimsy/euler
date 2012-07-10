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

class Integer
  def circulate
    circs = []
    circs << self.to_s
    circ = circs[0].split("").rotate.join
    until circ == circs[0]
      circs << circ
      circ = circ.split("").rotate.join
    end
    circs.map! { |c| c.to_i }
  end
end

limit = 1000000
primes = sieve_of_eratosthenes(limit).select { |k,v| v }.keys

# pp primes

sum = 0

primes.each do |i|
  if /(0|2|4|5|6|8)/.match(i.to_s)
    next
  end
  
  pp i
  circs = i.circulate
  trialsum = circs.length
  circs.delete(i)
  for j in circs
    unless primes.include? j      
      trialsum = 0
      break
    end
    primes.delete j
  end
  sum += trialsum
end

pp sum + 2 # hack to deal wih initial 2 & 5

      
  