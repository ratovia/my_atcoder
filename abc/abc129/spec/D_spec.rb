require 'rspec'

RSpec.describe 'test' do
  it 'test with "4 6\n#..#..\n.....#\n....#.\n#.#...\n"' do
    io = IO.popen("ruby abc129/D.rb", "w+")
    io.puts("4 6\n#..#..\n.....#\n....#.\n#.#...\n")
    io.close_write
    expect(io.readlines.join).to eq("8\n")
  end

  it 'test with "8 8\n..#...#.\n....#...\n##......\n..###..#\n...#..#.\n##....#.\n#...#...\n###.#..#\n"' do
    io = IO.popen("ruby abc129/D.rb", "w+")
    io.puts("8 8\n..#...#.\n....#...\n##......\n..###..#\n...#..#.\n##....#.\n#...#...\n###.#..#\n")
    io.close_write
    expect(io.readlines.join).to eq("13\n")
  end

end
