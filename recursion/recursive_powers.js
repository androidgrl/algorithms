var isEven = function(n) {
    return n % 2 === 0;
};

var isOdd = function(n) {
    return !isEven(n);
};

var power = function(x, n) {
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

console.log(power(3,2));
