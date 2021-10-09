n, m = gets.split.map(&:to_i)

array = (2 * n).times.map { gets.chomp }

ranks = [*1..(2*n)]


people = array.map.with_index do |hand,index|
  {hand: hand, win: 0 , index: index + 1}
end



# pp people
m.times do |i|
  0.upto(n-1) do |j|
    a = 2 * j
    b = 2 * j + 1
    ax = people[a]
    bx = people[b]
    # binding.irb
    a_hand = ax[:hand][i]
    b_hand = bx[:hand][i]

    if a_hand == "P" && b_hand == "G"
      ax[:win] += 1
    elsif a_hand == "G" && b_hand == "C"
      ax[:win] += 1
    elsif a_hand == "C" && b_hand == "P"
      ax[:win] += 1
    elsif a_hand == "P" && b_hand == "C"
      bx[:win] += 1
    elsif a_hand == "C" && b_hand == "G"
      bx[:win] += 1
    elsif a_hand == "G" && b_hand == "P"
      bx[:win] += 1
    end
  end
  people.sort_by!{|ele| [ele[:win], -ele[:index]]}.reverse!
  # pp people
end

people.each do |ele|
  puts ele[:index]
end
