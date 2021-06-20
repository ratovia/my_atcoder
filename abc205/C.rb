a, b, c = gets.split.map(&:to_i)

if c % 2 == 0
  c = 2
else
  c = 1
end

if a ** c > b ** c
  puts ">"
elsif a ** c < b ** c
  puts "<"
else
  puts "="
end

# if a == 0
#   if b == 0
#     puts "="
#   elsif b > 0
#     puts "<"
#   elsif b < 0
#     if c % 2 == 0
#       puts "<"
#     else
#       puts ">"
#     end
#   end
# elsif a > 0
#   if b == 0
#     puts ">"
#   elsif b > 0
#     if a > b
#       puts ">"
#     else
#       puts "<"
#     end
#   elsif b < 0
#     if c % 2 == 0
#       if a > b.abs
#         if a == b.abs
#           puts "="
#         else
#           puts ">"
#         end
#       elsif a == b.abs
#         puts "="
#       else
#         puts "<"
#       end
#     else
#       puts ">"
#     end
#   end
# elsif a < 0
#   if b == 0
#     if c % 2 == 0
#       puts ">"
#     else
#       puts "<"
#     end
#   elsif b > 0
#     if c % 2 == 0
#       if a.abs > b
#         puts ">"
#       elsif a.abs == b
#         puts "="
#       else
#         puts "<"
#       end
#     else
#       puts "<"
#     end
#   elsif b < 0
#     if c % 2 == 0
#       if a.abs > b.abs
#         puts ">"
#       else
#         puts "<"
#       end
#     else
#       if a.abs > b.abs
#         puts "<"
#       else
#         puts ">"
#       end
#     end
#   end
# end
