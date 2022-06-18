s = gets.chomp
len = s.length
charuniq = s.chars.uniq
len2 = charuniq.length


big = false
small = false


if len != len2
  puts "No"
else

  charuniq.each do |ele|
    if /\A[a-z]\z/.match?(ele)
      small = true
    elsif /\A[A-Z]\z/.match?(ele)
      big = true
    end
  end

  if small && big
    puts "Yes"
  else
    puts "No"
  end
end
