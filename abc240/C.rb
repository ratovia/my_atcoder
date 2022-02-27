@n, @x = gets.split.map(&:to_i)
@array = @n.times.map { gets.split.map(&:to_i) }

def hoge(jump, pos)
  # puts "#{jump}: #{pos}"
  if jump == @n + 1 && pos == @x
    puts "Yes"
    exit
  end
  if jump == @n + 1
    return
  end
  a, b = @array[jump - 1]
  hoge(jump + 1, pos + a)
  hoge(jump + 1, pos + b)
end

hoge(1, 0)

puts "No"

