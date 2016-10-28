def palindrome?(string)
  if string.length <= 1
    return true
  elsif string[0] == string[-1]
    return palindrome?(string[1..-2])
  else
    return false
  end
end

puts palindrome?("ab")
