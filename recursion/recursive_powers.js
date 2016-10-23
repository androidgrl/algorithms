var isEven = function(n) {
    return n % 2 === 0;
};

var isOdd = function(n) {
    return !isEven(n);
};

var power = function(x, n) {
    println("Computing " + x + " raised to power " + n + ".");
    if (n === 0) {
        return 1;
    } else if (n < 0) {
        return 1/power(x, -n);
    } else if (isOdd(n)) {
        return x * power(x, n-1);
    } else if (isEven(n)) {
        var y = power(x, n/2);
        return y * y;
    }
};

var displayPower = function(x, n) {
    println(x + " to the " + n + " is " + power(x, n));
};

displayPower(3, 0);
Program.assertEqual(power(3, 0), 1);
displayPower(3, 1);
Program.assertEqual(power(3, 1), 3);
displayPower(3, 2);
Program.assertEqual(power(3, 2), 9);
displayPower(3, -1);
Program.assertEqual(power(3, -1), 1/3);
Program.assertEqual(power(2, 1), 2);
Program.assertEqual(power(2, 0), 1);
