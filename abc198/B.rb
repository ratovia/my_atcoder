n = gets.chomp

len = n.length
def checkPalindrome(word)
  word = word.to_s
  size = word.length / 2
  return ( word[0..size] == word.reverse[0..size] )
end

flag = false

(len+1).times do |i|
  if checkPalindrome("0" * i + n)
    flag = true
  end
end

puts flag ? "Yes" : "No"