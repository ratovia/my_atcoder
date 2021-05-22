n = gets.to_i

0.upto(n) do |c|
  200.downto(0) do |b|
    
    if (n - c) % (2 ** b) == 0
      a = (n - c) / (2 ** b)
      if (a * (2 ** b) + c) == n
        puts a + b + c
        puts "#{a} + #{b} + #{c}" 
        exit
      else
        next
      end
    else
      next
    end
  end
end

