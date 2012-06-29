include Enumerable;

# triangleArray = [ [3], [7,4], [2,4,6], [8,5,9,3] ];
triangleArray = [[]];
triangleArray[0]  = [75];
triangleArray[1]  = [95, 64];
triangleArray[2]  = [17, 47, 82];
triangleArray[3]  = [18, 35, 87, 10];
triangleArray[4]  = [20,  4, 82, 47, 65];
triangleArray[5]  = [19,  1, 23, 75,  3, 34];
triangleArray[6]  = [88,  2, 77, 73,  7, 63, 67];
triangleArray[7]  = [99, 65,  4, 28,  6, 16, 70, 92];
triangleArray[8]  = [41, 41, 26, 56, 83, 40, 80, 70, 33];
triangleArray[9]  = [41, 48, 72, 33, 47, 32, 37, 16, 94, 29];
triangleArray[10] = [53, 71, 44, 65, 25, 43, 91, 52, 97, 51, 14];
triangleArray[11] = [70, 11, 33, 28, 77, 73, 17, 78, 39, 68, 17, 57];
triangleArray[12] = [91, 71, 52, 38, 17, 14, 91, 43, 58, 50, 27, 29, 48];
triangleArray[13] = [63, 66,  4, 68, 89, 53, 67, 30, 73, 16, 69, 87, 40, 31];
triangleArray[14] = [ 4, 62, 98, 27, 23,  9, 70, 98, 73, 93, 38, 53, 60,  4, 23];

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

