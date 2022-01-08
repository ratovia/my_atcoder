a, b, k = gets.split.map(&:to_i)

n = a + b

count = 0
(1 << n).times do |i|
  bit = i.to_s(2).rjust(n,'0')

  array = [0,0]
  (n-1).downto(0) do |j|
    if (i & (1 << j)) == 0
     array[0] += 1
    else
      array[1] += 1
    end
  end
  
  if array[0] == a && array[1] == b
    count += 1
  end 
  if count == k
    puts bit.gsub(/(0|1)/, "0" => "a", "1" => "b")
    exit
  end
end