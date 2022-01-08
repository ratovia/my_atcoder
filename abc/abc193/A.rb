a, b = gets.split.map(&:to_f)



puts sprintf("%.8f",((a * 100 - b * 100) / (a * 100)) * 100)

