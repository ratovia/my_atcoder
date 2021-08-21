n, m = gets.split.map(&:to_i)

array = gets.split.map(&:to_i)

require 'prime'

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

prime = Prime.instance

1.upto(m) do |k|
  
