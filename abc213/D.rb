n = gets.to_i

array = (n-1).times.map { gets.split.map(&:to_i)}


@graph = Array.new(n) {Array.new}

array.each do |ele|
  @graph[ele[0] - 1] << ele[1]
  @graph[ele[1] - 1] << ele[0]
end

pp @graph

start = 1

queue = [start]
flag = true
current = nil
history = []
require 'set'
@s = Set.new
def search(node)
  puts node
  @s.add(node)
  targets = @graph[node - 1]
  if targets.length == 0
    return
  end
  # pp targets
  while true
    target = targets[0]
    if @s.include?(target)
      targets.delete(target)
    else
      break
    end
  end
  unless targets.length == 0
    search(targets[0])
    targets.delete(target)
  end

  puts node unless targets.length == 0
  # pp targets
  targets.each do |target|
    unless @s.include?(target)
      search(target)
      break
    end
  end
  puts node unless targets.length == 0
end
search(1)
