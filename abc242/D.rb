s = gets.chomp

q = gets.to_i
require "pry"
array = q.times.map { gets.split.map(&:to_i) }

dp1 = [["A"], ["B","C"],["C","A","A","B"],["A","B","B","C","B","C","C","A"]]
dp2 = [["B"], ["C","A"],["A","B","B","C"],["B","C","C","A","C","A","A","B"]]
dp3 = [["C"], ["A","B"],["B","C","C","A"],["C","A","A","B","A","B","B","C"]]
array.each do |t,k|
  x = t % 4
  y = t / 4
  len = dp1[x].length
  target = k % len - 1

  # binding.pry
  # if target < 0 || Math.log(k,2) == 0.0 || t >= Math.log(k,2)
  #   if s[0] == "A"
  #     puts dp1[x][target]
  #   elsif s[0] == "B"
  #     puts dp2[x][target]
  #   elsif s[0] == "C"
  #     puts dp3[x][target]
  #   end
  # else
    ce = (k * 1.0 / (len * y)).ceil - 1

    puts ce
    if s[ce] == "A"
      puts dp1[x][target]
    elsif s[ce] == "B"
      puts dp2[x][target]
    elsif s[ce] == "C"
      puts dp3[x][target]
    end
  # end
end
