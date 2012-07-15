require 'pp'

def pandigitals n
  pand_str = ""
  for i in 1..n
    pand_str << i.to_s
  end
#  pp pand_chars
#  pand_str = pand_chars.join("")
  
  (pand_str.chars.to_a.permutation.map &:join).map { |x| x.to_i }.sort
end

def mult_mult_prod mult1, mult2, product
  mult1 * mult2 == product
end

def iterate_mmp n
  numstr = n.to_s
  mm_p = (numstr.length+1)/2 - 2

3.times do
  left = numstr[0..mm_p]
  product = numstr[mm_p+1..numstr.length-1].to_i
#  pp [mm_p, left, product]
  for index in 1..mm_p
    m1 = left[0..index-1].to_i
    m2 = left[index..mm_p].to_i
#    pp [m1, m2, product]
    if !$products.include?(product) && mult_mult_prod(m1, m2, product) 
      pp [m1,m2,product]
      $products << product
    end
  end
  mm_p += 1
end

end
    
    
    
$products = []
nums = pandigitals 9

=begin
for i in 4..9
  nums << pandigitals(i)
end
=end

nums.flatten!

nums.each do |num|
  iterate_mmp(num)
end

pp $products
pp $products.inject(0) { |sum, num| sum+num }
