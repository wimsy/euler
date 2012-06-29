var evalHundreds = function (numString) {
 //   var num = number;
    var numStr = numString;
    var digitStr = numStr[0];
    
    switch(digitStr) {
        case "1": return "onehundredand".length + evalTens(numStr.substr(1,2)); break;
        case "2": return "twohundredand".length + evalTens(numStr.substr(1,2)); break;
        case "3": return "threehundredand".length + evalTens(numStr.substr(1,2)); break;
        case "4": return "fourhundredand".length + evalTens(numStr.substr(1,2)); break;
        case "5": return "fivehundredand".length + evalTens(numStr.substr(1,2)); break;
        case "6": return "sixhundredand".length + evalTens(numStr.substr(1,2)); break;
        case "7": return "sevenhundredand".length + evalTens(numStr.substr(1,2)); break;
        case "8": return "eighthundredand".length + evalTens(numStr.substr(1,2)); break;
        case "9": return "ninehundredand".length + evalTens(numStr.substr(1,2)); break;
     }
}

var evalTens = function(numString) {
    var numStr = numString;
    var digitStr = numStr[0];
    if (numString === "00") {return -3;}
    
    switch(digitStr) {
        case "0": return evalUnits(numStr[1]); break;
        case "1": return evalTeens(numStr); break;
        case "2": return "twenty".length + evalUnits(numStr[1]); break;
        case "3": return "thirty".length + evalUnits(numStr[1]); break;
        case "4": return "forty".length + evalUnits(numStr[1]); break; // + evalTens(numStr[1,2]);
        case "5": return "fifty".length + evalUnits(numStr[1]); break;
        case "6": return "sixty".length + evalUnits(numStr[1]); break;
        case "7": return "seventy".length + evalUnits(numStr[1]); break;
        case "8": return "eighty".length + evalUnits(numStr[1]); break;
        case "9": return "ninety".length + evalUnits(numStr[1]); break;
     }
}

var evalTeens = function(numString) {
    var numStr = numString;
    var digitStr = numStr[1];
    
    switch(digitStr) {
        case "0": return "ten".length; break;
        case "1": return "eleven".length; break;
        case "2": return "twelve".length; break;
        case "3": return "thirteen".length; break;
        case "4": return "fourteen".length; break; // + evalTens(numStr[1,2]);
        case "5": return "fifteen".length; break;
        case "6": return "sixteen".length; break;
        case "7": return "seventeen".length; break;
        case "8": return "eighteen".length; break;
        case "9": return "nineteen".length; break;
     }
}

var evalUnits = function (numString) {
    var numStr = numString;
    var digitStr = numStr[0];
    
    switch(digitStr) {
        case "0": return "".length; break;
        case "1": return "one".length; break;
        case "2": return "two".length; break;
        case "3": return "three".length; break;
        case "4": return "four".length; break; 
        case "5": return "five".length; break;
        case "6": return "six".length; break;
        case "7": return "seven".length; break;
        case "8": return "eight".length; break;
        case "9": return "nine".length; break;
     }
}

var evalNumber = function(number) {
    var num = number;
    
    if (num >= 100) {
         return evalHundreds(num.toString());
    }
    else if (num >= 10) {
        return evalTens(num.toString());
    }
    else {
        return evalUnits(num.toString());
    }
}


var total = "onethousand".length;
var i;

for (i=1;i<1000;i++) {
    total = total + evalNumber(i);
//    print(i + " " + total);
}



print(total);

// print(evalNumber(760));
// print(evalHundreds("199"));
// print(evalHundreds("815"));

// print(evalNumber(5));
// print(evalUnits("9"));
// print(evalUnits("0"));

// print(evalNumber(100));

// print(evalNumber(15));

// print(evalNumber(21));
