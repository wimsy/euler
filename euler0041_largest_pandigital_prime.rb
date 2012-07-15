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


def pandigitals n
  pand_str = ""
  for i in 1..n
    pand_str << i.to_s
  end
#  pp pand_chars
#  pand_str = pand_chars.join("")
  
  (pand_str.chars.to_a.permutation.map &:join).map { |x| x.to_i }.sort.reverse
end

pp pandigitals 4

size = 9

while size > 0
  pp size
  nums = pandigitals size
  nums.each do |item|
    pp item
    if is_prime(item)
      pp ["Woohoo!!!", item]
      exit
    end
  end
  size -= 1
end

    
  
  