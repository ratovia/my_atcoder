# frozen_string_literal: true

s1 = gets.chomp
s2 = gets.chomp
s3 = gets.chomp

require 'set'
require 'pry'
def solve(s1,s2,s3)
  words = s1 + s2 + s3
  chars = Set.new words.each_char
  abort 'UNSOLVABLE' if chars.size > 10
  binding.pry
  first_chars = Set.new words.split("").select { |w| w.size > 1 }.map { |w| w[0] }
  n = first_chars.size
  sorted_chars = first_chars.to_a.join + (chars - first_chars).to_a.join
  %w[0 1 2 3 4 5 6 7 8 9].permutation(chars.size).each do |guess|
    next if guess[0, n].member? '0'

    expr = puzzle.tr sorted_chars, guess.join
    return expr if eval expr
  end
  nil
end

str = solve(s1.upcase, s2.upcase, s3.upcase)

if str.nil?
  puts 'UNSOLVABLE'
else
  ary = str.delete('+').delete('==').split(' ')
  if ary.include?('0')
    puts 'UNSOLVABLE'
  else
    ary.each do |ar|
      puts ar
    end
  end
end
