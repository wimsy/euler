var sumSquares = 0;
var squareSums = 0;

for (i=1; i<101; i++) {
	sumSquares = sumSquares + i*i;
	squareSums = squareSums + i;
}

squareSums = squareSums * squareSums;

var delta = squareSums - sumSquares;

print(delta);
