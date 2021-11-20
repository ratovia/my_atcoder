n = 1048576
q = gets.to_i
array = q.times.map { gets.split.map(&:to_i) }
@h = nil
require 'set'
a = []
s = Set.new # -1じゃ外集合

array.each do |t, x|
  if t == 1
    @h = x
    @hmodn = @h % n
    if s.include?(@hmodn)
      while true
        @h += 1
        @hmodn = @h % n
        s.add(@hmodn)
        if s.include?(@hmodn)
          break
        end
      end
    end
    a.push([@hmodn, @h])
    s.add(@hmodn)
  elsif t == 2
    # pp a
    flag = false
    a.each do |i, j|
      if i == x
        puts j
        flag = true
      end
    end

    if !flag
      puts -1
    end
  end
end
