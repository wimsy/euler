class String
  def all_possible_permutations
    self.chars.to_a.permutation.map(&:join)
  end
end

puts "0123456789".all_possible_permutations.sort[999999]
