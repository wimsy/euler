require 'pp'
require 'set'

class Array
  def bsearch(e, l = 0, u = length - 1)
    return if l>u;m=(l+u)/2;e<self[m]?u=m-1:l=m+1;e==self[m]?m:bsearch(e,l,u)
  end
end

def pentagonal_numbers limit
  nums = [1]
  n = 2
  while n <= limit
    nums << (n*(3*n-1)/2).to_i
    n+=1
  end
  nums
end


  

pentags = pentagonal_numbers(3000)
pentags_set = pentags.to_set
num_of_pentags = pentags.length
mindiff = 100000000
pp pentags.max
pp pentags.length
pairs = []
diffs = []

pentags.combination(2).each do |item, item2|
  if pentags_set.include?(item+item2) && pentags_set.include?((item-item2).abs)
    diffs << (item - item2).abs
  end
end

pp diffs.min


