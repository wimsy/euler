spiralSize = 1001
numSpirals = (spiralSize-1)/2
corners = [[1, 1, 1, 1]]

for i in (1..numSpirals)
    corners << [corners[i-1][3]+2*i, corners[i-1][3]+4*i, corners[i-1][3]+6*i, corners[i-1][3]+8*i]
 
end

puts corners.flatten.inject(0) { |sum, item| sum + item } - 3



