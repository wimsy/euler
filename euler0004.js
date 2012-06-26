var number1;
var number2;
var product;
var prodString;
var prodStringRev;
var maxProduct = 0;

for (number1 = 999; number1 > 0; number1--) {
	for (number2 = 999; number2 > 0; number2--) {
		product = number1 * number2;
		prodString = product.toString();
		prodStringReverse = prodString.split("").reverse().join("");
		if (prodString === prodStringReverse) {
			print(product);
			maxProduct = product > maxProduct ? product : maxProduct;
		}
	}
}

print("   ",maxProduct);