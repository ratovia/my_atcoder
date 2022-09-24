n, @l = gets.split.map(&:to_i)
@k = gets.to_i
@array = gets.split.map(&:to_i)

left, right = 0, @l

# targetの回数で切れるかどうか
def is_cut_with_times(times)
  cut_count = 0
  previous_cut = 0

  @array.each do |ele|
    # 「今回切るところ」 ~ 「前回切ったところ」間がtarget以上
    # 「今回切るところ」 ~ 「羊羹の長さ」間がtarget以上
    if ele - previous_cut >= times && @l - ele >= times
      cut_count += 1
      previous_cut = ele
    end
  end

  # cutできた回数が@k以上であれば、targetの回数で切れる
  cut_count >= @k
end

while right - left > 1
  mid = (left+right) / 2
  if is_cut_with_times(mid)
    left = mid
  else
    right = mid
  end
end

puts left
