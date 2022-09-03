s = gets.chomp.chars.map(&:to_i)

# pp s

k = [s[6], s[3], s[7]+s[1], s[4] + s[0], s[8]+ s[2], s[5], s[9]]

if s[0] == 0
  # if s[3] == 0
  #   if s[6] == 1 && s[]
  # end

  # if s[7] == 0 && s[1] == 0
  # end

  # if s[4] == 0 && s[0] == 0
  # end

  # if s[8] == 0 && s[2] == 0
  # end

  # if s[5] == 0

  # end

  if k[1] == 0
    if k[0] == 1 && k[2..6].sum > 0
      puts "Yes"
      exit
    end
  end

  if k[2] == 0
    if k[0..1].sum > 0 && k[3..6].sum > 0
      puts "Yes"
      exit
    end
  end

  if k[3] == 0
    if k[0..1].sum > 0 && k[4..6].sum > 0
      puts "Yes"
      exit
    end
  end

  if k[4] == 0
    if k[0..3].sum > 0 && k[5..6].sum > 0
      puts "Yes"
      exit

    end
  end

  if k[5] == 0
    if k[0..4].sum > 0 && k[6] == 1
      puts "Yes"
      exit

    end
  end

  puts "No"
else
  puts "No"
end
