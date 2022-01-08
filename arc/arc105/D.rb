t = gets.to_i

t.times do |_|
  n = gets.to_i
  a = gets.split.map(&:to_i)


  if n == 1
    win = "gote"
  end

  if n == 2
    if a[0] == 1 && a[1] == 1
      win = "gote"
    end
  end


  puts win == "sente" ? "First" : "Second"
end