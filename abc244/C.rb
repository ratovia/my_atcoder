n = gets.to_i

dp = [*1..(2*n+1)]

flag = true
while flag
  puts dp.shift
  STDOUT.flush
  aoki = gets.to_i
  if aoki == 0
    exit
  else
    dp.delete(aoki)
  end
end
