n, k = gets.split.map(&:to_i)
ks = k.to_s
ksr = ks.reverse
ksri = ksr.to_i

nums = []
nums << k
nums << ksri

strs = []
nums.each do |i|
  next if ks[-1] == "0"
  if i <= n && k <= i
    strs << i.to_s
  end
  next if k > ksri && k == i
  [10, 100, 1000, 10000, 100000, 1000000, 10000000, 100000000, 1000000000, 10000000000, 100000000000, 1000000000000].each do |j|
    num = i * j
    if num <= n
      strs << num.to_s
    # else
    #   break
    end
  end
end

# pp strs.uniq
puts strs.map(&:to_i).uniq.length
