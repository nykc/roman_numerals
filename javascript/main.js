function toRoman(num) {
    var result = ''; // the result is going to be a string
    var arabic = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1];
    var roman = ["M", "MC", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I"];
    for (var i = 0; i <= arabic.length; i++) {
        while(num % arabic[i] < num) {
            result += roman[i];
            num -= arabic[i];
        }
    }
    return result;
}

function fromRoman(str) {
    var result = 0; // we need to convert a string into a number
    var arabic = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1];
    var roman = ["M", "MC", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I"];
    for (var i = 0; i <= arabic.length; i++) {
        while(str.indexOf(roman[i]) === 0) {
            // check the first characters in the string
            result += arabic[i];
            str = str.replace(roman[i], '');
            // remove the matched letter from the beginning
        }
    }
    return result;
}

// TESTING toRoman
console.log(toRoman(8)); // returns VIII
console.log(toRoman(9)); // returns IX
console.log(toRoman(109)); // returns CIX
console.log(toRoman(90)); // returns XC
console.log(toRoman(999)); // returns MCXCIX

// TESTING fromRoman
console.log(fromRoman("LXXXVII")); // returns 87
console.log(fromRoman("XXIII")); // returns 23
console.log(fromRoman("DCCVIII")); // returns 708
console.log(fromRoman("XXXIX")); // returns 39
console.log(fromRoman("C")); // returns 100
console.log(fromRoman("IV")); // returns 4
