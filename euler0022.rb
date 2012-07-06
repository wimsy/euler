class String 
  def alphaValue
    self.upcase.scan(/./).inject(0){|sum, char| sum + char.ord - 64}
  end  
end


require 'csv'

namesImport = CSV.read("./euler0022_names.txt")
names = namesImport[0].sort
sum = 0

for i in (0..names.length-1)
  sum += (i+1)*names[i].alphaValue
end
puts sum

