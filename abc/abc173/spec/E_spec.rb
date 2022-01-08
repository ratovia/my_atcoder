require 'rspec'

RSpec.describe 'test' do
  it 'test with "4 2\n1 2 -3 -4\n"' do
    io = IO.popen("ruby abc173/E.rb", "w+")
    io.puts("4 2\n1 2 -3 -4\n")
    io.close_write
    expect(io.readlines.join).to eq("12\n")
  end

  it 'test with "4 3\n-1 -2 -3 -4\n"' do
    io = IO.popen("ruby abc173/E.rb", "w+")
    io.puts("4 3\n-1 -2 -3 -4\n")
    io.close_write
    expect(io.readlines.join).to eq("1000000001\n")
  end

  it 'test with "2 1\n-1 1000000000\n"' do
    io = IO.popen("ruby abc173/E.rb", "w+")
    io.puts("2 1\n-1 1000000000\n")
    io.close_write
    expect(io.readlines.join).to eq("1000000000\n")
  end

  it 'test with "10 10\n1000000000 100000000 10000000 1000000 100000 10000 1000 100 10 1\n"' do
    io = IO.popen("ruby abc173/E.rb", "w+")
    io.puts("10 10\n1000000000 100000000 10000000 1000000 100000 10000 1000 100 10 1\n")
    io.close_write
    expect(io.readlines.join).to eq("999983200\n")
  end

end
