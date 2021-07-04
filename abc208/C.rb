n,k = gets.split.map(&:to_i)
array = gets.split.map(&:to_i)
sort_array = array.sort

num = k / n
amari = k % n

if amari != 0
  girigiri = sort_array[amari-1]
  array.each do |ele|
    additional = ele <= girigiri ? 1 : 0
    puts num + additional
  end
elsif amari == 0
  array.each do |ele|
    puts num
  end
end
