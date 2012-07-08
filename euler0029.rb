require 'set'

alimit = blimit = 100
answer_set = Set.new

for a in 2..alimit
  for b in 2..blimit
    answer_set << a**b
  end
end

puts answer_set.length
# puts answer_set.sort

