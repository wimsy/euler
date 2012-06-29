include Enumerable;

triangleArray = [];

txt = File.open("./euler0067_triangle.txt", "r")
txt.each_line do |line|
  lineArray = line.split(" ").map(&:to_i)
  triangleArray.push lineArray
end



print(triangleArray);
print("\n\n");

maxSumArray = triangleArray;

maxIndex = triangleArray.length-1;

maxSumArray [0][0] = triangleArray[0][0];
print(triangleArray[0]);
print("\n");
print(maxSumArray[0]);
print("\n\n");

for i in 1..maxIndex 
  print(triangleArray[i]);
  print("\n");
  print(maxSumArray[i]);
  print("\n");
  maxSumArray[i][0] = maxSumArray[i-1][0] + triangleArray[i][0];
  maxSumArray[i][triangleArray[i].length-1] = 
    maxSumArray[i-1][triangleArray[i].length-2] + 
    triangleArray[i][triangleArray[i].length-1];
  for j in 1..triangleArray[i].length-2
    maxSumArray[i][j] = 
      [maxSumArray[i-1][j-1], maxSumArray[i-1][j] ].max +
      triangleArray[i][j];
#    puts(maxSumArray[i][j]);
  end
  print(maxSumArray[i]);
  print("\n\n");
end

print(maxSumArray[i].max);
print("\n\n");

print(triangleArray[i].max);
print("\n");

