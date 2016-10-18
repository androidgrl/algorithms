Analysis if Selection Sort

For an array of length n, it calls indexOfMinimum n times, and swap n times.

Each time it calls indexOfMinimum the loop inside cycles one less time as it progresses over the array.  So, total the loop inside indexOfMinimum gets called:

1 + 2 + 3 + 4 + n-1 + n times
or mathematically (n+1)(n/2) which is n^2/2 + n/2

So in total there are 2n + n^2/2 + n/2 operations being called.

Since \theta analysis only cares about the most significant values, we can say that
Selection sort has \theta(n^2)

