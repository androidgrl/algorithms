def factorial(n)
  result = 1
  n.times do |i|
    result = result * (i+1)
  end
  return result
end

puts factorial(4)
