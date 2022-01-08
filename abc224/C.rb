n = gets.to_i

array = n.times.map { gets.split.map(&:to_i) }

count = 0
0.upto(n-3) do |i|
  (i+1).upto(n-2) do |j|
    (j+1).upto(n-1) do |k|
      xi,yi = array[i]
      xj,yj = array[j]
      xk,yk = array[k]
      aij = (yj - yi) * 1.0 / (xj - xi) if (xj - xi) != 0
      ajk = (yk - yj) * 1.0 / (xk - xj) if (xk - xj) != 0
      aki = (yi - yk) * 1.0 / (xi - xk) if (xi - xk) != 0
      if aij == ajk && aij == aki && ajk == aki
        count += 1
      end
    end
  end
end

class Integer
  def combination(k)
    return 1 if k.zero?

    (self - k + 1..self).inject(:*) / k.factorial
  end

  def permutation(k)
    return 1 if k.zero?

    (self - k + 1..self).inject(:*)
  end

  def factorial
    return 1 if self.zero?

    (1..self).inject(:*)
  end
end

puts n.combination(3) - count
