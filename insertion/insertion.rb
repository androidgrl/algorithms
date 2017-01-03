def insert(array, i, value)
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
