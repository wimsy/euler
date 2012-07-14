# I stole this from http://zacharydenton.com/project-euler-solutions/31/
# It works. 

count = 0
200.step(0, -200) do |a|
  a.step(0, -100) do |b|
    b.step(0, -50) do |c|
      c.step(0, -20) do |d|
        d.step(0, -10) do |e|
          e.step(0, -5) do |f|
            f.step(0, -2) do
              count += 1
            end
          end
        end
      end
    end
  end
end
puts count

=begin
require 'pp'

def total_value coin_hash
  coin_hash.inject(0) do |sum, (k,v)|
    sum + k.to_i*v
  end
end

def coin_change n, m
  pp n
  pp m
  if m < 0
    pp 1
    return 1
  elsif n < 0
    pp 0
    return 0
  end
  

  if $memo_table[n][m] == nil
    $memo_table[n][m] = coin_change(n, m-1) + coin_change(n-$denoms[m], m)
  end
  pp $memo_table[200]
  return $memo_table[n][m]
end
  
denominations = [1,2,5,10,20,50,100,200]
$denoms = denominations[5..7]
num_of_denoms = $denoms.length
target = 200
$memo_table = Array.new(201,[nil, nil, nil, nil, nil, nil, nil, nil])

pp coin_change(target, $denoms.length - 1)
=end
