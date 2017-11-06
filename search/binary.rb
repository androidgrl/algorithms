def search(array, value)
  min = 0
  max = array.length - 1
  while min <= max do
    middle = ((min + max)/2).floor
    if value == array[middle]
      return middle
    elsif value < array[middle]
      max = array[middle] - 1
    else
      min = array[middle] + 1
    end
  end
  -1
end

array = [1,2,3,4,5]
value = 1
puts search(array, value)
