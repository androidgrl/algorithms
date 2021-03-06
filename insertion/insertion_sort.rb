def insert(array, rightIndex, value)
  i = rightIndex
  while i >= 0 && array[i] > value do
    array[i + 1] = array[i]
    i -= 1
  end
  array[i + 1] = value
end

def insertion_sort(array)
  i = 1
  while i < array.length do
    insert(array, i - 1, array[i])
    i += 1
  end
end

array = [22, 11, 99, 88, 9, 7, 42]
insertion_sort(array)
p array

#start with second element and move left
#as long as the element to the left is larger than it
#set it equal to the larger number
#if the element to the left is smaller then it, set the left
#element equal to the original value
