def palindrome?(string)
  if string.length <= 1
    true
  elsif string[0] == string[-1]
    palindrome?(string[1..-2])
  else
    false
  end
end

puts palindrome?("abba")
