require 'pp'
require 'csv'

Enumerable.class_eval do
  def mode
    group_by do |e|
      e
    end.values.max_by(&:size).first
  end
end

def one_char_decode undecoded, key
  undecoded.map { |c| c ^ key }
end

def build_piles orig, num
  origs = []
  piles = orig.clone
  orig.each_slice(num) {|a| origs << a}
  while origs[-1].length < origs[0].length
    origs[-1] << nil
  end
  piles = origs.clone.transpose
  piles.each {|a| a.delete(nil)}
  piles
end

regex = Regexp.new('[^a-zA-Z ]')

text = CSV.read("cipher1.txt").flatten.map { |c| c.to_i }
# pp text
#keys = ('aaa'..'zzz').map { |k| k.split("").map { |c| c.ord } }
keys = ('goc'..'goe').map { |k| k.split("").map { |c| c.ord } }
#pp keys

piles = build_piles(text, keys[0].length)
#pp piles[0].length

keys.each do |key|
  decoded_piles = []
  count = 0
  piles.each_with_index do |pile, index|
    decoded_piles << one_char_decode(pile, key[index])
    if decoded_piles[index].mode == ' '.ord
      count += 1
    end
  end
#  pp count if count > 0
  if count == key.length
    decoded = decoded_piles[0]
    for i in 1..key.length-1
      decoded = decoded.zip(decoded_piles[i])
    end
    decoded.flatten!.delete(nil)
    pp decoded.inject {|sum, item| sum + item }
    decoded = (decoded.map { |c| c.chr }).join("")
 #   pp [key, decoded, decoded.class]
  end
  


#  $decoded = ((text.zip(key_loop).collect {|x,y| x^y}).map { |c| c.chr })
#  pp decoded.split("").mode
#  if decoded.mode == ' '
#    pp [(decoded.map { |c| c.chr }).join(""),(key.map { |c| c.chr }).join("")]
#  end

end




  
