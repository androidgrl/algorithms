var factorial = function(n) {
    var result = 1;
    for (var i = n; i > 0; i--) {
        result = result * i;
    }
    return result;
};

println("The value of 5! should be " + 5*4*3*2*1);
println("The value of 5! is " + factorial(5));
