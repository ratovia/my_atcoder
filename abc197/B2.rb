h,w,x,y = gets.split.map(&:to_i)

array = h.times.map{ gets.chomp.chars }


x -= 1
y -= 1

di = [-1,0,1,0]
dj = [0,-1,0,1]

ans = 1

4.times do |i|
  ni = x
  nj = y
  while true
    ni += di[i]
    nj += dj[i]
    break if ni < 0 || nj < 0 || ni >= h || nj >= w 
    break if array[ni][nj] == "#"
    ans += 1
  end
end

puts ans