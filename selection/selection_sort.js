var swap = function(array, firstIndex, secondIndex) {
    var temp = array[firstIndex];
    array[firstIndex] = array[secondIndex];
    array[secondIndex] = temp;
};

var indexOfMinimum = function(array, startIndex) {

    var minValue = array[startIndex];
    var minIndex = startIndex;

    for(var i = minIndex + 1; i < array.length; i++) {
        if(array[i] < minValue) {
            minIndex = i;
            minValue = array[i];
        }
    }
    return minIndex;
};

var selectionSort = function(array) {
    var index = 0;
    for (var i = 0; i < array.length; i++) {
        index = indexOfMinimum(array, i);
        swap(array, i, index);
    }
};

var array = [22, 11, 99, 88, -9, 7, 42];
selectionSort(array);
console.log("Array after sorting:  " + array);
