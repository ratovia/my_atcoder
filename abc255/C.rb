x, a, d, n = gets.split.map(&:to_i)

if d != 0
  k = ((x - a) * 1.0 / d).round
else
  k = 0
end
tail = (n-1) * d + a

# pp tail
kx = k * d + a
head = a
targets = []
if d > 0
  if head <= kx && tail >= kx
    target = kx
    targets.push((kx+d)) if head <= (kx+d) && tail >= (kx+d)
    targets.push((kx-d)) if head <= (kx-d) && tail >= (kx-d)
  elsif head > kx
    target = head
    targets.push((head+d)) if head <= (head+d) && tail >= (head+d)
    targets.push((head-d)) if head <= (head-d) && tail >= (head-d)
  elsif tail < kx
    target = tail
    targets.push((tail+d)) if head <= (tail+d) && tail >= (tail+d)
    targets.push((tail-d)) if head <= (tail-d) && tail >= (tail-d)
  end
elsif d == 0
  target = a
else
  if head >= kx && tail <= kx
    target = kx
    targets.push((kx+d)) if head >= (kx+d) && tail <= (kx+d)
    targets.push((kx-d)) if head >= (kx-d) && tail <= (kx-d)
  elsif head < kx
    target = head
    targets.push((head+d)) if head <= (head+d) && tail >= (head+d)
    targets.push((head-d)) if head <= (head-d) && tail >= (head-d)
  elsif tail > kx
    target = tail
    targets.push((tail+d)) if head <= (tail+d) && tail >= (tail+d)
    targets.push((tail-d)) if head <= (tail-d) && tail >= (tail-d)
  end
end

targets.push(target)
# pp target

# pp targets

ok = targets.map do |target|
  (target - x).abs
end

puts ok.min
