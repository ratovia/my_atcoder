n, m = gets.split.map(&:to_i)
array = m.times.map { gets.split.map(&:to_i) }

@G = Array.new(n) { Array.new() }

array.each do |ele|
  a, b = ele
  @G[a-1].push(b)
  @G[b-1].push(a)
end

# pp @G

count = 0
1.upto(n-2) do |a|
  (a+1).upto(n-1) do |b|
    (b+1).upto(n) do |c|
      if @G[a-1].include?(b) && @G[a-1].include?(c) && @G[b-1].include?(c)
        # puts "#{a} #{b} #{c}"
        count += 1
      end
    end
  end
end

puts count
