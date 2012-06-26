var total = 0;
var target = 600851475143;

var isPrime = function(n) {
    for (j = 2; j <= Math.sqrt(n); j++) {
        if (n % j == 0) {
            return false;
        }
    }
    return true;
};

for (i = 2; i < Math.sqrt(target); i++) {
    if (target % i == 0) {
        print (i);
        if (isPrime(i)) {
            print ("     ", i);
        }
//        print (total);
    }
}


