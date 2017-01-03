def will_it_return?(thing)
  if thing == 2
    4
  end
  3
end

returns 3

def will_it_return?(thing)
  if thing == 2
    4
  end
end

returns 4

def will_it_return?(thing)
  if thing == 2
    return 4
  end
  3
end

returns 4

puts will_it_return?(2)
