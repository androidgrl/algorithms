require 'pry'

def swap(array, first, second)
  value = array[first]
  array[first] = array[second]
  array[second] = value
end

def find_smaller_index(array, start_index)
  min_index = start_index
  min_value = array[start_index]
  (start_index + 1).upto(array.length - 1) do |i|
    if array[i] < min_value
      min_index = i
      min_value = array[i]
    end
  end
  return min_index
end

def selection_sort(array)
  array.each_with_index do |v, i|
    index = find_smaller_index(array, i)
    swap(array, i, index)
  end
end

array = [22, 11, 99, 88, -9, 7, 42]
selection_sort array
p array
