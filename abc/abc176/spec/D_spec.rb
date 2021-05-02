require 'rspec'

RSpec.describe 'test' do
  it 'test with "4 4\n1 1\n4 4\n..#.\n..#.\n.#..\n.#..\n"' do
    io = IO.popen("ruby abc176/D.rb", "w+")
    io.puts("4 4\n1 1\n4 4\n..#.\n..#.\n.#..\n.#..\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "4 4\n1 4\n4 1\n.##.\n####\n####\n.##.\n"' do
    io = IO.popen("ruby abc176/D.rb", "w+")
    io.puts("4 4\n1 4\n4 1\n.##.\n####\n####\n.##.\n")
    io.close_write
    expect(io.readlines.join).to eq("-1\n")
  end

  it 'test with "4 4\n2 2\n3 3\n....\n....\n....\n....\n"' do
    io = IO.popen("ruby abc176/D.rb", "w+")
    io.puts("4 4\n2 2\n3 3\n....\n....\n....\n....\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "4 5\n1 2\n2 5\n#.###\n####.\n#..##\n#..##\n"' do
    io = IO.popen("ruby abc176/D.rb", "w+")
    io.puts("4 5\n1 2\n2 5\n#.###\n####.\n#..##\n#..##\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

end
