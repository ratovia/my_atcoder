n = gets.to_i
array = n.times.map { gets.split.map(&:to_i) }


# pp array

x_sort = array.sort_by { |x, _| x }
y_sort = array.sort_by { |_, y| y }

# pp x_sort
# pp y_sort

x_sub = {}
y_sub = {}

x_sort.each do |ele|
  x, _ = ele
  sym = x.to_s.to_sym
  if x_sub.has_key?(sym)
    x_sub[sym].push(ele)
  else
    x_sub[sym] = [ele]
  end
end

# pp x_sub

y_sort.each do |ele|
  _, y = ele
  sym = y.to_s.to_sym
  if y_sub.has_key?(sym)
    y_sub[sym].push(ele)
  else
    y_sub[sym] = [ele]
  end
end

# pp y_sub

count = 0
array.each do |ele|
  x, _ = ele
  x_sub[x.to_s.to_sym].each do |ele_x|
    next if ele == ele_x
    _, y_x = ele_x
    y_sub[y_x.to_s.to_sym].each do |ele_xy|
      next if ele_x == ele_xy
      x_xy, _ = ele_xy
      x_sub[x_xy.to_s.to_sym].each do |ele_xyx|
        next if ele_xy == ele_xyx
        x_xyx, y_xyx = ele_xyx
        # y_sub[y_xyx.to_s.to_sym].each do |ele_xyxy|
        #   next if ele_xyx == ele_xyxy
        #   x_xyxy, y_xyxy = ele_xyxy
        if x == x_xyx
          count += 1
          # pp "match"
          # pp ele
          # pp ele_x
          # pp ele_xy
          # pp ele_xyx
          # pp ele_xyxy
        end
      end
    end
  end
end

puts count / 4
