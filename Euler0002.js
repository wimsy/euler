var total = 0;
var i1 = 1;
var i2 = 1;

while (i2 < 4000000) {
    if (i2 % 2 == 0) {
        total = total + i2;
    //    print (i2);
    //    print (total);
    }
    inext = i1 + i2;
    i1 = i2;
    i2 = inext;
}

print(total);