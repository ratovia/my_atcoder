K = 30
n = gets.to_i
a = gets.split.map do |d|
  d.to_i.to_s(2).rjust(K , '0')
end

pp a
K.times do |j|
  a.each_with_index do |ele, i|
    puts i
    puts a[i+1][j] if (i+1) < (n - 1)
    puts ele[j] if (i+1) < (n - 1)
    a[i+1][j] = a[i+1][j] + ele[j] if (i+1) < (n - 1)
  end
end

pp a
