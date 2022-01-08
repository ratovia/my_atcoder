def chmax(a, b) a > b ? a : b end

a, b = gets.split.map(&:to_i)

maxd = 1

if b % 2 == 0
  if a <= b/2
    puts b/2
    exit
  end
else
  if a <= (b-1)/2
    puts (b-1)/2
    exit
  end
  (b).downto(a + 1) do |i|
    i.downto(a) do |j|
      next if i == j
      maxd = chmax(maxd, i.gcd(j))
    end
  end
  
  puts maxd
end