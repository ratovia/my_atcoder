require 'rspec'

RSpec.describe 'test' do
  it 'test with "3 3\n..#\n#..\n...\n"' do
    io = IO.popen("ruby abc088/D.rb", "w+")
    io.puts("3 3\n..#\n#..\n...\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "10 37\n.....................................\n...#...####...####..###...###...###..\n..#.#..#...#.##....#...#.#...#.#...#.\n..#.#..#...#.#.....#...#.#...#.#...#.\n.#...#.#..##.#.....#...#.#.###.#.###.\n.#####.####..#.....#...#..##....##...\n.#...#.#...#.#.....#...#.#...#.#...#.\n.#...#.#...#.##....#...#.#...#.#...#.\n.#...#.####...####..###...###...###..\n.....................................\n"' do
    io = IO.popen("ruby abc088/D.rb", "w+")
    io.puts("10 37\n.....................................\n...#...####...####..###...###...###..\n..#.#..#...#.##....#...#.#...#.#...#.\n..#.#..#...#.#.....#...#.#...#.#...#.\n.#...#.#..##.#.....#...#.#.###.#.###.\n.#####.####..#.....#...#..##....##...\n.#...#.#...#.#.....#...#.#...#.#...#.\n.#...#.#...#.##....#...#.#...#.#...#.\n.#...#.####...####..###...###...###..\n.....................................\n")
    io.close_write
    expect(io.readlines.join).to eq("209\n")
  end

end