s = gets.chomp.split('')
MOD = 10**9+7

dp = Array.new(10**5+1, '')
@chokudai = 'chokudai'
dp[0] = ''

@count = 0

def mat(str, target)
  # binding.irb
  str.each_with_index do |c, i|
    if c == @chokudai[target]
      if target == 7
        @count += 1
        return
      end
      mat(str[i+1..-1], target+1)
    end
  end
end

mat(s, 0)

puts @count % MOD
