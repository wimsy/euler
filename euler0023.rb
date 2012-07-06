class Integer
  def factors()
    1.upto(Math.sqrt(self)).select {|l| (self % l).zero?}.inject([]) do |f, l| 
      f << l
      f << self/l unless l == self/l
      f
    end.sort
  end
  
  def sumoffactors()
    self.factors.inject(0){|sum,item| sum + item} - self
  end
  
  def abundant?()
    if self.sumoffactors > self
      true
    else
      false
    end
  end
  
end



def sumsOfNonAbundantNumbers()
  abundantArray = (1..$abundantCap).select {|item| item.abundant?}
  arrayOfSums = sumsOfAbundants = []
  all = Array.new($abundantCap) {|k| k+1}
  abundantArray.each do |x|
    abundantArray.sort!.each do |y|
      if x + y > $abundantCap
        break
      end
      a = x + y
      sumsOfAbundants << a
    end
  end
  sumsOfAbundants = sumsOfAbundants.uniq!.sort
  arrayOfSums = all - sumsOfAbundants
  puts arrayOfSums
  arrayOfSums
end


     


$abundantCap = 28123 # Above this, all numbers are abundant

puts sumsOfNonAbundantNumbers.inject(0) {|item, sum| item + sum}
# puts (13-1).abundant?


