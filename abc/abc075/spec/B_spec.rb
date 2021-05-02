require 'rspec'

RSpec.describe 'test' do
  it 'test with "3 5\n.....\n.#.#.\n.....\n"' do
    io = IO.popen("ruby abc075/B.rb", "w+")
    io.puts("3 5\n.....\n.#.#.\n.....\n")
    io.close_write
    expect(io.readlines.join).to eq("11211\n1#2#1\n11211\n")
  end

  it 'test with "3 5\n#####\n#####\n#####\n"' do
    io = IO.popen("ruby abc075/B.rb", "w+")
    io.puts("3 5\n#####\n#####\n#####\n")
    io.close_write
    expect(io.readlines.join).to eq("#####\n#####\n#####\n")
  end

  it 'test with "6 6\n#####.\n#.#.##\n####.#\n.#..#.\n#.##..\n#.#...\n"' do
    io = IO.popen("ruby abc075/B.rb", "w+")
    io.puts("6 6\n#####.\n#.#.##\n####.#\n.#..#.\n#.##..\n#.#...\n")
    io.close_write
    expect(io.readlines.join).to eq("#####3\n#8#7##\n####5#\n4#65#2\n#5##21\n#4#310\n")
  end

end
