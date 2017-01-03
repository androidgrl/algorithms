def powers(x, n)
  if n == 0
    return 1
  elsif n % 2 == 0
    return powers(x, n/2) * powers(x, n/2)
  elsif n < 0
    return 1/powers(x, n)
  else
    return x * powers(x, n-1)
  end
end

puts powers(2, 4)
