s1 = gets.chomp.chars
s2 = gets.chomp.chars
s3 = gets.chomp.chars
all = []
[s1,s2,s3].each do |s|
  s.each do |c|
    all << c
  end
end
all.uniq!
if all.size > 10
  puts "UNSOLVABLE"
else
  hash = {}
  all.each_with_index.each do |c,id|
    hash[c] = id
  end
  s1 = s1.map{|c| hash[c]}
  s2 = s2.map{|c| hash[c]}
  s3 = s3.map{|c| hash[c]}
  (0..9).to_a.permutation(all.size).each do |pattern|
    next if pattern[s1[0]] * pattern[s2[0]] * pattern[s3[0]] == 0
    next if (pattern[s1[-1]] + pattern[s2[-1]]) % 10 != pattern[s3[-1]]
    nums = []
    [s1,s2,s3].each do |s|
      sum = 0
      s.each_with_index do |num,id|
        sum = 10 * sum + pattern[num]
      end
      nums << sum
    end
    if nums[0..1].sum == nums[-1]
      puts nums
      exit
    end
  end
  puts "UNSOLVABLE"
end