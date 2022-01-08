@h, @w, x, y = gets.split.map(&:to_i)

@s = @h.times.map { gets.chomp.split('') }

def find_block(xt, yt)
  return 0 if xt >= @h || xt < 0 || yt >= @w || yt < 0
  
  if @s[xt][yt] == '.'
    # puts "(#{xt}:#{yt})"
    point = 1
    point = point + find_block_xp(xt + 1, yt) + find_block_xn(xt - 1, yt) + find_block_yp(xt, yt + 1) + find_block_yn(xt, yt - 1)
  else
    point = 0
  end

  return point
end

def find_block_xp(xt, yt)
  return 0 if xt >= @h || xt < 0 || yt >= @w || yt < 0
  
  if @s[xt][yt] == '.'
    # puts "xp(#{xt}:#{yt})"
    point = 1
    point = point + find_block_xp(xt + 1, yt)
  else
    point = 0
  end

  return point
end

def find_block_xn(xt, yt)
  return 0 if xt >= @h || xt < 0 || yt >= @w || yt < 0
  
  if @s[xt][yt] == '.'
    # puts "xn(#{xt}:#{yt})"
    point = 1
    point = point + find_block_xn(xt - 1, yt)
  else
    point = 0
  end

  return point
end

def find_block_yp(xt, yt)
  return 0 if xt >= @h || xt < 0 || yt >= @w || yt < 0
  
  if @s[xt][yt] == '.'
    # puts "yp(#{xt}:#{yt})"
    point = 1
    point = point + find_block_yp(xt, yt + 1)
  else
    point = 0
  end

  return point
end
def find_block_yn(xt, yt)
  return 0 if xt >= @h || xt < 0 || yt >= @w || yt < 0
  
  if @s[xt][yt] == '.'
    # puts "yn(#{xt}:#{yt})"
    point = 1
    point = point + find_block_yn(xt, yt - 1)
  else
    point = 0
  end

  return point
end

res = find_block(x - 1, y - 1)

puts res
