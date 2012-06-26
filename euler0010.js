var isPrime = function(n) {
    for (j = 2; j <= Math.sqrt(n); j++) {
        if (n % j == 0) {
            return false;
        }
    }
    return true;
};

var sum = 0;

for (i=2; i<2000000; i++) {
	if (isPrime(i)) { sum = sum + i; }
//	sum = isPrime(i) ? sum + i : sum;
}

print (sum);
