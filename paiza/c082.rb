require 'pry'
x,y = gets.split().map(&:to_i)

a = []
x.times do |_|
  a << gets.split().map(&:to_i)
end

a = a.transpose

ary = Array.new(x,0)

3 * 100 *( 100 + 100)
60000

3.times do |i|
  line = a[i]
  1.upto(y) do |z|
    min = 101
    akaten_num = []
    akaten_people = []
    line.each_with_index do |ele, j|
      if akaten_num.include?(ele)
        akaten_people << j
        akaten_num << ele
        if akaten_num.length > y
          max = akaten_num.max
          count = 0
          akaten_num.each_with_index do |k,l|
            if max == k
              count += 1
            end
          end 
          if count > 1
          else
            akaten_num.each_with_index do |k,l|
              if max == k
                akaten_num.delete(k)
                akaten_people.delete(l)
              end
            end 
          end 
        end
      end
      if min >= ele
        min = ele
        akaten_people << j
        akaten_num << ele
        if akaten_people.length > y
          max = akaten_num.max
          akaten_num.each_with_index do |k,l|
            if max == k
              akaten_num.delete(max)
              akaten_people.delete(l)
            end
          end 
        end
      end
      
    end
    
    akaten_people.each do |m|
      binding.pry
      ary[m] += 1
    end
  end
end

pp ary


# 3.times do |i|
#   line = a[i]
#   line.each_with_index.sort
#   1.upto(y) do |yi|
#     min = 101
#     line.each do |ele|
#       if min > ele

#     end
#   end
# end


3 1
a 100 50 50
b 100 50 50
c 100 50 50


akaten_num = [100,100,80]
min = 80
   0    1   2        
[[100, 80, 100], => [100, 100 , 80]
 [50, 50, 50],
  [50, 50, 50]]