@a, n = gets.split.map(&:to_i)

@dp = {}

def hoge(kk, num)
  return if @dp["#{kk}"] && @dp["#{kk}"] <= num
  @dp["#{kk}"] = num

  if kk == 1
    @dp["#{kk}"] = num if @dp["#{kk}"] > num
  else
    hoge(kk / @a, num+1) if kk % @a == 0
    unless kk.to_s[1] == "0"
      ro = kk.to_s.split("").rotate(1).join("").to_i
      # puts "#{ro} => #{kk}"
      hoge( ro , num+1) if ro >= 10 && ro % 10 != 0
    end
  end
end

hoge(n, 0)
# pp @dp

if @dp["1"]
  puts @dp["1"]
else
  puts -1
end
