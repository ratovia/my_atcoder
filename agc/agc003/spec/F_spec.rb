require 'rspec'

RSpec.describe 'test' do
  it 'test with "3 3 3\n.#.\n###\n#.#\n"' do
    io = IO.popen("ruby agc003/F.rb", "w+")
    io.puts("3 3 3\n.#.\n###\n#.#\n")
    io.close_write
    expect(io.readlines.join).to eq("20\n")
  end

  it 'test with "\n.............#.............\n............###............\n............#.#............\n..........#..#..#..........\n.........#########.........\n.........#.##.##.#.........\n..........#.....#..........\n.........###...###.........\n.........#.#...#.#.........\n....#........#........#....\n...###......###......###...\n...#.#......#.#......#.#...\n.#..#..#..#..#..#..#..#..#.\n###########################\n#.##.##.##.##.##.##.##.##.#\n.#.....#..#.....#..#.....#.\n###...######...######...###\n#.#...#.##.#...#.##.#...#.#\n....#.................#....\n...###...............###...\n...#.#...............#.#...\n.#..#..#...........#..#..#.\n#########.........#########\n#.##.##.#.........#.##.##.#\n.#.....#...........#.....#.\n###...###.........###...###\n#.#...#.#.........#.#...#.#\n"' do
    io = IO.popen("ruby agc003/F.rb", "w+")
    io.puts("\n.............#.............\n............###............\n............#.#............\n..........#..#..#..........\n.........#########.........\n.........#.##.##.#.........\n..........#.....#..........\n.........###...###.........\n.........#.#...#.#.........\n....#........#........#....\n...###......###......###...\n...#.#......#.#......#.#...\n.#..#..#..#..#..#..#..#..#.\n###########################\n#.##.##.##.##.##.##.##.##.#\n.#.....#..#.....#..#.....#.\n###...######...######...###\n#.#...#.##.#...#.##.#...#.#\n....#.................#....\n...###...............###...\n...#.#...............#.#...\n.#..#..#...........#..#..#.\n#########.........#########\n#.##.##.#.........#.##.##.#\n.#.....#...........#.....#.\n###...###.........###...###\n#.#...#.#.........#.#...#.#\n")
    io.close_write
    expect(io.readlines.join).to eq("3 3 3\n###\n#.#\n###\n")
  end

  it 'test with "1\n"' do
    io = IO.popen("ruby agc003/F.rb", "w+")
    io.puts("1\n")
    io.close_write
    expect(io.readlines.join).to eq("11 15 1000000000000000000\n.....#.........\n....###........\n....####.......\n...######......\n...#######.....\n..##.###.##....\n..##########...\n.###.....####..\n.####...######.\n###############\n#.##..##..##..#\n")
  end

  it 'test with "301811921\n"' do
    io = IO.popen("ruby agc003/F.rb", "w+")
    io.puts("301811921\n")
    io.close_write
    expect(io.readlines.join).to eq()
  end

end
