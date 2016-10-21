def move(num, start, finish, temp)
  if num == 1
    @towers[finish].push @towers[start].pop
    puts "moving from #{start} to #{finish}: #{@towers}"
  else
    move(num - 1, start, temp, finish)
    move(1, start, finish, temp)
    move(num - 1, temp, finish, start)
  end
end

size = 5
@towers = [[*1..size].reverse, [], []]
move(size, 0, 1, 2)
