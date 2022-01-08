require 'rspec'

RSpec.describe 'test' do
  it 'test with "2\n1000000000 1000000000\n"' do
    io = IO.popen("ruby abc169/B.rb", "w+")
    io.puts("2\n1000000000 1000000000\n")
    io.close_write
    expect(io.readlines.join).to eq("1000000000000000000\n")
  end

  it 'test with "3\n101 9901 999999000001\n"' do
    io = IO.popen("ruby abc169/B.rb", "w+")
    io.puts("3\n101 9901 999999000001\n")
    io.close_write
    expect(io.readlines.join).to eq("-1\n")
  end

  it 'test with "31\n4 1 5 9 2 6 5 3 5 8 9 7 9 3 2 3 8 4 6 2 6 4 3 3 8 3 2 7 9 5 0\n"' do
    io = IO.popen("ruby abc169/B.rb", "w+")
    io.puts("31\n4 1 5 9 2 6 5 3 5 8 9 7 9 3 2 3 8 4 6 2 6 4 3 3 8 3 2 7 9 5 0\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

end
