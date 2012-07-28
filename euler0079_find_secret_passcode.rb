require 'pp'

keys = []
file = File.new("keylog.txt", "r")
while (line = file.gets)
  keys << line
end
file.close

#keys = ["513", "527", "532"]
digits = Hash.new
freqs = Hash.new

password = ""

keys.each do |key|
  for i in 0..2
    if digits[key[i]] == nil
      digits[key[i]] = 0
      freqs[key[i]] = 0
    end
    digits[key[i]] += i
    freqs[key[i]] += 1
  end
end

pp digits
pp freqs


    