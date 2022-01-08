  def chmin(a, b) a < b ? a : b end
# require 'pry'
n = gets.to_i

array =  gets.split.map(&:to_i).sort!

c_max = 0
r_max = nil
m_max = chmin(1000, array[-1])
2.upto(m_max) do |i|
  count = 0
  array.each do |ele|
    if ele % i == 0
      count += 1
    end
  end
  if c_max <= count
    c_max = count
    r_max = i
  end 
  # binding.pry
end

puts r_max

