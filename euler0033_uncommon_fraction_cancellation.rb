require 'pp'
require 'Rational'
require 'mathn'

def fraction_test num, denom, fraction
#  unless num == denom
    return false if denom == 0
    testfraction = (num/denom).to_r
#    pp [num, denom, testfraction, fraction] if testfraction == fraction
    testfraction == fraction
#  end
end

num = 10
denom = 11

fractions = Array.new


while denom < 99
  denom += 1
  num = 10
  while num < denom-1
    num += 1
    next if num%10 == 0 && denom%10 == 0
    next if num%11 == 0 && denom%11 == 0
    test_num_right = (num%10).to_i
    test_denom_right = (denom%10).to_i
    test_num_left = (num/10).floor.to_i
    test_denom_left = (denom/10).floor.to_i
 #   pp [test_num_left, test_num_right, test_denom_left, test_denom_right]
    fraction = (num/denom).to_r
#    pp fraction

    
     if test_num_right == test_denom_right && fraction_test(test_num_left, test_denom_left, fraction)
       fractions << fraction
#       pp [num, denom]
   
     elsif test_num_right == test_denom_left && fraction_test(test_num_left, test_denom_right, fraction)
       fractions << fraction
#       pp [num, denom]

     elsif test_num_left == test_denom_right && fraction_test(test_num_right, test_denom_left, fraction)
       fractions << fraction
#       pp [num, denom]
   
     elsif test_num_left == test_denom_left && fraction_test(test_num_right, test_denom_right, fraction)
       fractions << fraction
#       pp [test_num_left, test_denom_left, num, denom]
       
     end

  end

end

pp fractions
pp fractions.inject(1) { |product, item| product*item }.denominator


    
      