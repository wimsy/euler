var success = true;

for (i = 2; i < 1000000000; i++) {
	success = true;
//	print(i);
	for (j = 20; j > 1; j--) {
//		print(j);
		success = success && (i%j === 0);
		if (success && j === 2) { 
			print ('Success!  ' + i);
			exit; 
		}
	}
}