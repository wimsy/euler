# Not solved...

require 'pp'

a = 28433
b = 2
c = 7830457
#c = 40
d = 7

prod = 1
exp = 35
mult = 2**exp
interim_length = mult.to_s.length
i = 1
#prod_test = prod

while i <= c - c%exp
#    puts i
    prod = prod * mult
#    prod_test = prod_test * mult

#    exit
    prod = prod.to_s[-interim_length..-1].to_i
    i += exp
#    pp [prod, mult]
#    pp prod
    
end

while i <= c
    i +=1
    prod = prod * 2
#    prod_test = prod_test * 2
end

pp [i,(a*prod+1).to_s[-10..-1].to_i]
#pp Math.log2(prod_test)