def powers(x, n)
  if n == 0
    return 1
  elsif n % 2 == 0
    y = powers(x, n/2)
    return y * y
  elsif n < 0
    return 1 / powers(x, n)
  else
    x * powers(x, n - 1)
  end
end

puts powers(3,2)
