d = "0"

for i in 1..1000000 
  d << i.to_s
end

puts d.length
puts d[1].to_i*d[10].to_i*d[100].to_i*d[1000].to_i*d[10000].to_i*d[100000].to_i*d[1000000].to_i
