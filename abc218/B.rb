a = gets.split.map(&:to_i)

str = 'abcdefghijklmnopqrstuvwxyz'

puts a.map{|ele| str[ele-1]}.join()
