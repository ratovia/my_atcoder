n = gets.to_i
a = gets.split.map(&:to_i)
@count = 0
@dp = []
@streak = 0
@tmp = []
@output = []
def hoge(ele)
  # binding.pry
  if @tmp.empty?
    @tmp << ele
    @streak = 1
  elsif @tmp[0] == ele
    @tmp << ele
    @streak += 1
  else
    # 違うのが来た場合
    if @streak > 1
      # 消える
      @tmp = []
      s_streak = @streak
      @tmp << @dp.pop
      @count -= 1
      @streak = 1

      # 9 - 34
      @output[-1] -= s_streak
      hoge(ele)
    else
      # 消えない
      @dp += @tmp
      @count += @streak
      @tmp = []
      @tmp << ele
      @streak = 1
    end
  end

end

a.each_with_index do |ele, index|
  if index == n - 1
    hoge(ele)
    @output << @count + @streak
    @output[-1] -= @streak if @streak > 1
  else
    hoge(ele)
    @output << @count + @streak
  end
end

@output.each do |kk|
  puts kk
end
