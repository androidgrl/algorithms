def binary_search array, target
  min = 0
  max = array.length - 1
  while min <= max do
    guess = ((min + max)/2).floor
    if array[guess] == target
      puts "found #{target} at #{guess}"
      return target
    elsif array[guess] < target
      min = guess + 1
    else
      max = guess - 1
    end
  end
  puts "not here"
end

array = [*1..10]
target = 11
binary_search array, target
