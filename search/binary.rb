def search(array, target)
  min = 0
  max = array.length - 1
  while min <= max
    guess = ((min + max)/2).floor
    if array[guess] == target
      return guess
    elsif array[guess] < target
      min = guess + 1
    else
      max = guess - 1
    end
  end
  return -1
end

puts search([1,2,3,4], 4)
