require 'rspec'

RSpec.describe 'test' do
  it 'test with "2 3 2\n..#\n###\n"' do
    io = IO.popen("ruby abc173/C.rb", "w+")
    io.puts("2 3 2\n..#\n###\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n")
  end

  it 'test with "2 3 4\n..#\n###\n"' do
    io = IO.popen("ruby abc173/C.rb", "w+")
    io.puts("2 3 4\n..#\n###\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "2 2 3\n##\n##\n"' do
    io = IO.popen("ruby abc173/C.rb", "w+")
    io.puts("2 2 3\n##\n##\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "6 6 8\n..##..\n.#..#.\n#....#\n######\n#....#\n#....#\n"' do
    io = IO.popen("ruby abc173/C.rb", "w+")
    io.puts("6 6 8\n..##..\n.#..#.\n#....#\n######\n#....#\n#....#\n")
    io.close_write
    expect(io.readlines.join).to eq("208\n")
  end

end
