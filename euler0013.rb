ft = []
File.open("euler0013.txt", "r") do |file|
    file.each_line do |line|
            ft << line.scan(/\d+/)
    end
end

ft = ft.flatten.collect { |i| i.to_f }
sum = 0
ft.each { |a| sum+=a }

firstten = sum.to_s[0,1] + sum.to_s[2,9]
puts(firstten)

