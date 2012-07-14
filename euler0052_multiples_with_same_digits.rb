require 'pp'

count = 2
products=["2","4","6","8","10","12"].map { |i| i.split("").sort.join }

until products.find_all{ |i| i == products[0] }.length == 6
    count += 1
#    puts count
    products.each_index do |index| 
        products[index]=((index+1)*count).to_s.split("").sort.join
    end
end

puts count
pp products


