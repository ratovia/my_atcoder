n, m = gets.split.map(&:to_i)

array = m.times.map { gets.split.map(&:to_i) }

class Row
  attr_reader :row
  def initialize
    @row = []
  end

  def push_el(el)
    @row.push(el)
  end

  def unshift_el(el)
    @row.unshift(el)
  end

  def empty?
    @queue.empty?
  end
end

box = []

array.each do |a, b|
  if box.empty?
    row = Row.new
    row.push_el(a)
    row.push_el(b)
    box.push(row)
  else
    flag = false
    box.each do |obj|
      if obj.row.last == a
        obj.push_el(b)
        flag = true
        break
      elsif obj.row.first == a
        obj.unshift_el(b)
        flag = true
        break
      elsif obj.row.last == b
        obj.push_el(a)
        flag = true
        break
      elsif obj.row.first == b
        obj.unshift_el(a)
        flag = true
        break
      end
    end

    if flag == false
      row = Row.new
      row.push_el(a)
      row.push_el(b)
      box.push(row)
    end
  end
end

# pp box



res_obj_first = nil
res_obj_last = nil

count = 0
prev_length = nil
while !box.empty?
  length = box.length

  if prev_length == length
    count += 1
    if count > length
      break
    end
  end
  obj = box.first
  row = obj.row

  if row.length != row.uniq.length
    break
  end
  if res_obj_first.nil?
    res_obj_first = row.first
    res_obj_first = row.last
    box.shift
  elsif res_obj_first == row.last
    res_obj_first = row.first
    box.shift
  elsif res_obj_last == row.first
    res_obj_last = row.last
    box.shift
  else
    box.rotate!
  end
  prev_length = length
end


puts box.length == 0 ? "Yes" : "No"
