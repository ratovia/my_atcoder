n = gets.to_i
a = gets.split.map(&:to_i)

MOD = 998244353

pre_array = Array.new(10, 0)
pre_array[a[0]] = 1

1.upto(n-1) do |i|
  target = a[i]
  array = Array.new(10, 0)
  pre_array.each_with_index do |ele, index|
    if ele > 0
      summer = index + target
      muitier = index * target
      if summer >= 10
        summer = summer % 10
      end
      if muitier >= 10
        muitier = muitier % 10
      end
      array[summer] += 1 * ele
      array[muitier] += 1 * ele
    end
  end
  pre_array = array
end


pre_array.each do |ele|
  puts ele % MOD
end
