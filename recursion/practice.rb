def AdditivePersistence(num, t = 0)
  p "when begin, num is #{num}"
  return t if num <= 9
  t += 1
  num = num.to_s.split("").inject(0) { |sum, x| sum += x.to_i }
  p "after inject, num is #{num}"
  AdditivePersistence(num, t)
  p "-----------"
  p "t = #{t}"
end

AdditivePersistence(56)
