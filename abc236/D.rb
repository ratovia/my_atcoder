n = gets.to_i

array = (2 * n-1).times.map { gets.split.map(&:to_i) }

using Module.new {
  refine Array do
    def in_groups_of(num, fill_with = nil, &block)
      # fill で足りない分を埋めてから each_slice する
      fill(fill_with, size, ((size + size % num) % num)).each_slice(num, &block).to_a
    end
  end
}

pp [*1..2*n].in_groups_of(2)
