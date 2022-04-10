n = gets.to_i


def sss(num)
  if num == 1
    return "1"
  end
  return sss(num - 1) + " " + num.to_s + " " + sss(num - 1)
end

puts sss(n)
