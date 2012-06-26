var i = 2;
var k = 0;

var isPrime = function(n) {
    for (j = 2; j <= Math.sqrt(n); j++) {
        if (n % j == 0) {
            return false;
        }
    }
    return true;
};

while (k<10001) {
	if (isPrime(i)) {
		k++;
		print(k," - ",i);
	}
	i++;
}