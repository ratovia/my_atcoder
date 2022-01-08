t = gets.to_i
array = t.times.map { gets.to_i }

require "prime"

prime = Prime.instance
class Prime
  def each_divisor(n, &block)
      pf = prime_division(n)
      num = -> { pf.inject(1) { |prod, (_, exp)| prod * exp.succ } }
      Enumerator.new(num) { |y| __each_divisor__(1, pf, &y.method(:<<)) }
                .tap { |enum| enum.each(&block) }
  end

  private def __each_divisor__(d, ary, &block)
      return yield(d) if ary.empty?

      ary = ary.dup
      prime, exp = ary.pop
      0.upto(exp) { __each_divisor__(d, ary, &block); d *= prime }
  end
end

array.each do |i|
  # num_even = 0
  # num_odd = 0 
  # prime.each_divisor(i) do |d|
  #   if d % 2 == 0 
  #     num_even += 1
  #   else
  #     num_odd += 1
  #   end
  # end

  # if i == 1
  #   puts "Odd"
  # elsif num_even == num_odd
  #   puts "Same"
  # elsif num_even > num_odd
  #   puts "Even"
  # else
  #   puts "Odd"
  # end

  if i % 4 == 0
    puts "Even"
  elsif i % 4 == 1
    puts "Odd"
  elsif i % 4 == 2
    puts "Same"
  elsif i % 4 == 3
    puts "Odd"
  end
end
