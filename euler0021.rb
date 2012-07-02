class Integer
  def factors()
    1.upto(Math.sqrt(self)).select {|l| (self % l).zero?}.inject([]) do |f, l| 
      f << l
      f << self/l unless l == self/l
      f
    end.sort
  end
end

class Integer
  def sumoffactors()
    self.factors.inject(0){|sum,item| sum + item} - self
  end
end


amicableNumbers = []

for i in (1..10000)
  if i == i.sumoffactors.sumoffactors && i != i.sumoffactors
    amicableNumbers.push(i)
  end
end

puts amicableNumbers
puts(amicableNumbers.inject(0){|sum, item| sum + item})
