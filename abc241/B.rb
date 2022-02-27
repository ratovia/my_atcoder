n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i).sort
b = gets.split.map(&:to_i).sort
# require "pry"

b.each_with_index do |ele,index|
  flag = false
  while a.length > 0 && a.length >= b.length - index
    ak = a.shift
    # binding.pry
    if ak == ele
      flag = true
      break
    else
      if ak > ele
        puts "No"
        exit
      end
    end
  end
  if !flag
    puts "No"
    exit
  end
end

puts "Yes"
