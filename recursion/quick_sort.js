var swap = function(array, firstIndex, secondIndex) {
    var temp = array[firstIndex];
    array[firstIndex] = array[secondIndex];
    array[secondIndex] = temp;
};

var partition = function(array, p, r) {
    var q = p;
    for (var j = p; j < r; j++) {
        if (array[j] <= array[r]) {
            swap(array, q, j);
            q++;
        }
    }
    swap(array, r, q);
    return q;
};

var quickSort = function(array, p, r) {
  if (p < r) {
    var index = partition(array, p, r);
    quickSort(array, p, index - 1);
    quickSort(array, index + 1, r);
  }
}

var array = [5, 2, 8, 16, 12];
quickSort(array, 0, 4);
console.log(array);
