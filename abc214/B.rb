s, t = gets.split.map(&:to_i)


count = 0
0.upto(s) do |a|
  0.upto(s) do |b|
    cx = s - a - b
    next if cx < 0
    cx.downto(0) do |c|
      # puts "#{a}, #{b}, #{c}"
      if (a + b + c) <= s && (a * b * c) <= t
        # puts "ok"
        count += 1
      end
    end
  end
end


puts count
