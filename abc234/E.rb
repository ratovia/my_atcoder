x = gets.to_i

len = x.to_s.length

if len == 1 || len == 2
  puts x
  exit
end

if len < 6
  while true
    array = x.to_s.split("").map(&:to_i)
    shokou = array[0]
    kousa = array[1] - array[0]
    flag = true
    (2..array.length-1).each do |i|
      if array[i] - array[i-1] != kousa
        flag = false
        break
      end
    end
    if flag
      break
    end
    x = x + 1
  end
  puts x
  exit
end

if len == 6
  puts [111111,123456, 222222,234567, 333333,345678, 444444,456789, 543210, 555555, 654321, 666666, 765432, 777777, 876543, 888888, 987654, 999999].bsearch{|aa| aa >= x}
  exit
end
if len == 7
  puts [1111111,1234567, 2222222,2345678, 3333333,3456789, 4444444, 5555555, 6543210, 6666666, 7654321, 7777777, 8765432, 8888888, 9876543, 9999999].bsearch{|aa| aa >= x}
  exit
end
if len == 8
  puts [11111111,12345678, 22222222,23456789, 33333333, 44444444, 55555555, 66666666,76543210, 77777777, 87654321, 88888888, 98765432, 99999999].bsearch{|aa| aa >= x}
  exit
end
if len == 9
  puts [111111111,123456789, 222222222, 333333333, 444444444, 555555555, 666666666, 777777777, 876543210, 888888888, 987654321, 999999999].bsearch{|aa| aa >= x}
  exit
end
if len == 10
  puts [1111111111, 2222222222, 3333333333, 4444444444, 5555555555, 6666666666, 7777777777, 8888888888, 9876543210, 9999999999, 11111111111].bsearch{|aa| aa >= x}
  exit
end

if len >= 11
  array = x.to_s.split("").map(&:to_i)

  if array.max == array.min
    puts x
    exit
  end
  if array[0] > array[1]
    puts array[0].to_s * len
  else
    if "9" * len == x.to_s
      puts x
      exit
    elsif array[0] == 9
      puts "9" * len
      exit
    else
      if x > ((array[0]).to_s * len).to_i
        puts (array[0] + 1).to_s * len
      else
        puts (array[0]).to_s * len
      end
      exit
    end
  end
  exit
end
