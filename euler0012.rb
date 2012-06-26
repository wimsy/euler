require 'prime'

class Integer
  def factors()
    1.upto(Math.sqrt(self)).select {|l| (self % l).zero?}.inject([]) do |f, l| 
      f << l
      f << self/l unless l == self/l
      f
    end.sort
  end
end

n = 0
i = 1
j = 700000000
k = 1
sum = 0

for i in 1..j
  sum = sum + i
#  puts("i = #{i}")
#  puts("sum = #{sum}")
#  puts ("#{sum.factors.length} divisors")
  if sum.factors.length > 500
    puts ("Success!  #{sum} at i = #{i}.")
    exit
  end
end

=begin
  for k in 1..sum
    if sum.modulo(k) == 0
      n +=1
      if n>500
        puts("Success!")
        puts(sum)
        puts(n)
      end
      if n==200
        puts(sum)
        puts(n)
        puts(i)
      end
    end
#    puts(n)
  end

  i +=1
  n=0
end
=end