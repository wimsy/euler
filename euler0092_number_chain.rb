require 'pp'

def number_chain_link num
  num.to_s.split("").inject(0) {|sum, item| sum + (item.to_i)**2}
end

def cat_number_chain num
  # Assumes global Array $lookups with results for all lower numbers
  result = number_chain_link num
  return 1 if result == 1
  return 89 if result == 89
  if result < num
    return $lookups[result]
  end
  cat_number_chain result
end

$lookups = [0]

=begin
for i in 1..10
  pp cat_number_chain i
end
=end

i = 1
count = 0



while i < 10000000
  result = cat_number_chain(i)
  $lookups << result
  count += 1 if result == 89
  i += 1
  pp i if count % 10000 == 0
end

pp count

