### SNIPPET
  # n = gets.split.map(&:to_i)
  # array = n.times.map { gets.split.map(&:to_i) }
  # [].all?(&:even?)
  # a = [*1..m].repeated_combination(n).to_a
  # [1,2,3,4,5].select { |num| num.even? }  # => [2, 4]
  # ["a","a","b"].group_by(&:itself).map{|k,v| [k, v.count]}.to_h #=> {"a"=>2, "b"=>1}
  # 切り捨て: .floor(2).to_f ,切り上げ： .ceil(2).to_f,四捨五入: round(2)
  # 3.upto(6) do |i|, 6.downto(3) do |i|
  # 公約数125.gcd(100)、公倍数125.lcm(100)
  # PI = Math::PI
  # 高さ = a * Math.sin(w / 180.0 * Math::PI), 底辺 = a * Math.cos(w / 180.0 * Math::PI)
  # def chmax(a, b) a > b ? a : b end
  # INF = Float::INFINITY
  def chmin(a, b) a < b ? a : b end

# require 'pry'

h,w = gets.split.map(&:to_i)
ci,cj = gets.split.map(&:to_i)
di,dj = gets.split.map(&:to_i)

ci -= 1
cj -= 1
di -= 1
dj -= 1

s = []
h.times do |_|
  s << gets.chomp.split("")
end

# @count = 0

# def counter
#   @count += 1
# end

# def print_table(s)
#   s.each do |ele|
#     ele.each do |d|
#       print d
#     end
#     puts ""
#   end
#   puts ""
# end


s[ci][cj] = 0

dequeue = []
dequeue.unshift([ci,cj,0])

ki = [0,1,0,-1] # 右下左上
kj = [1,0,-1,0] # 右下左上
while dequeue.length != 0
  target = dequeue.shift
  x = target[0]
  y = target[1]
  z = target[2]
  # pp target
  # pp dequeue
  sxy = s[x][y]
  if sxy == '.' || sxy == '-'
    s[x][y] = z
  end
  break if (x == di && y == dj)
  4.times do |i|
    xi = x+ki[i]
    yi = y+kj[i]
    if (xi) >= 0 && (xi) < h && (yi) >= 0 && (yi) < w
      next_pos = s[xi][yi] 
      # counter
      next if next_pos == '#'
      if next_pos == '.' || next_pos == '-'
        dequeue.unshift([(xi), (yi), z])
      else
        s[xi][yi] = s[x][y] > s[xi][yi] ? sxy : s[xi][yi]
      end
    end
  end

  [-2,-1,0,1,2].each do |i|
    ss = s[x+i]
    [-2,-1,0,1,2].each do |j|
      if (x + i) >= 0 && (x + i) < h && (y + j) >= 0 && (y + j) < w
        next_pos = ss[y+j]
        if next_pos != '#'
          if next_pos == '.'
            dequeue << [(x+i),(y+j),s[x][y]+1]
            ss[y+j] = '-'
          end
        end
        # counter
      end
    end
  end
  # print_table(s)
end



puts s[di][dj] != "." ? s[di][dj] : "-1"

# puts @count