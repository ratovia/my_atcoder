require 'set'
N = 50
M = 50

@i,@j = gets.split.map(&:to_i)
tile = N.times.map { gets.split.map(&:to_i) }
array = N.times.map { gets.split.map(&:to_i) }


@s = ""
set = Set.new
set.add(tile[@i][@j])
@direction = 3
def back
  if @s[-1] == "U"
    @i += 1
  elsif @s[-1] == "D"
    @i -= 1 
  elsif @s[-1] == "L"
    @j += 1
  elsif @s[-1] == "R"
    @j -= 1
  end
  @s = @s.slice(0...-1)
  if (@count % 3 == 0)
    @direction = (@direction + 1) % 4
  else
    @direction = (@direction - 2) % 4
  end
end

@s += 'L'
@j -= 1

@count = 0
@back_count = 0
while @count < 100000 && @back_count < 4
  @count += 1
  # puts "(i,j): (#{@i}, #{@j})"

  if (@i < 0 || @i >= N || @j < 0 || @j >= M) || set.include?(tile[@i][@j])
    back 
    @back_count += 1
  end

  set.add(tile[@i][@j])
  @back_count = 0
  if @direction == 0 # 上
    @s += 'U'
    @i -= 1
  elsif @direction == 1
    @s += 'R'
    @j += 1
  elsif @direction == 2
    @s += 'D'
    @i += 1
  elsif @direction == 3
    @s += 'L'
    @j -= 1
  end
  # puts @s
end
@s = @s.slice(0...-1)
puts @s