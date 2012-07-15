start = Time.now
largest_known_fixnum = 1
smallest_known_bignum = nil
until (smallest_known_bignum and smallest_known_bignum == largest_known_fixnum + 1)
  if smallest_known_bignum.nil?
    next_number_to_try = largest_known_fixnum * 1000
  else
    next_number_to_try = (smallest_known_bignum + largest_known_fixnum) / 2 #Geometric mean would be more efficient, but more risky
  end
  raise "Can't happen case" if next_number_to_try <= largest_known_fixnum or (smallest_known_bignum and next_number_to_try >= smallest_known_bignum)
  if next_number_to_try.class == Bignum
    smallest_known_bignum = next_number_to_try
  elsif next_number_to_try.class == Fixnum
    largest_known_fixnum = next_number_to_try
  else
    raise "Can't happen case"
  end
end
finish = Time.now
puts "The largest fixnum is #{largest_known_fixnum}"
puts "The smallest bignum is #{smallest_known_bignum}"
puts "Calculation took #{finish - start} seconds"