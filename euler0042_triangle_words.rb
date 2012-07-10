require 'csv'
require 'pp'

class String 
  def alpha_value
    self.upcase.scan(/./).inject(0){|sum, char| sum + char.ord - 64}
  end  
end

class Array
  def longest_word
    self.group_by(&:size).max.last
  end
end

def triangle_numbers limit
  nums = [1]
  n = 2
  while n <= limit
    nums << (0.5*n*(n+1)).to_i
    n+=1
  end
  nums
end

words_import = CSV.read("./euler0042_words.txt")[0]
max_triangle_num = words_import.longest_word[0].length*26
puts max_triangle_num
num_of_tri_words = 0
tri_nums = triangle_numbers max_triangle_num
pp tri_nums

words_import.each do |word|
  if tri_nums.include? word.alpha_value
    num_of_tri_words += 1
  end
end

puts num_of_tri_words
