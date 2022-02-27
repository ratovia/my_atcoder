n = gets.to_i
a = gets.split.map(&:to_i)
@count = 0
@dp = []
@streak = 0
@tmp = []
@output = []
def hoge(ele)
  if @tmp.empty?
    @tmp << ele
    @streak = 1
  elsif @tmp[0] == ele && @streak + 1 == ele
    # 消える
    @tmp = []
    s_streak = @streak
    @tmp << @dp.pop
    @count -= 1
    @streak = 0

    # 9 - 34
    hoge(ele)
    @streak = 1
  elsif @tmp[0] == ele
    @tmp << ele
    @streak += 1
  else
      # 消えない
      @dp += @tmp
      @count += @streak
      @tmp = []
      @tmp << ele
      @streak = 1
  end
end

a.each_with_index do |ele, index|
  if index == n - 1
    hoge(ele)
    @output << @count + @streak
    @output[-1] -= @streak if @streak > 1 && @streak == ele
  else
    hoge(ele)
    @output << @count + @streak
  end
end

@output.each do |kk|
  puts kk
end
