var a = 0;
var b = 0;
var c = 0;

for (a=1;a<500;a++) {
	for (b=1;b<=a;b++) {
		c = 1000 - a - b;
		if (a*a + b*b === c*c) {
			print (a, " ", b, " ", c);
			print (a*b*c);
			print (a*a, " + ", b*b, " = ", c*c);
		}
	}
}