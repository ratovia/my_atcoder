require 'rspec'

RSpec.describe 'test' do
  it 'test with "5\n1 1 2 2\n"' do
    io = IO.popen("ruby abc163/C.rb", "w+")
    io.puts("5\n1 1 2 2\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n2\n0\n0\n0\n")
  end

  it 'test with "10\n1 1 1 1 1 1 1 1 1\n"' do
    io = IO.popen("ruby abc163/C.rb", "w+")
    io.puts("10\n1 1 1 1 1 1 1 1 1\n")
    io.close_write
    expect(io.readlines.join).to eq("9\n0\n0\n0\n0\n0\n0\n0\n0\n0\n")
  end

  it 'test with "7\n1 2 3 4 5 6\n"' do
    io = IO.popen("ruby abc163/C.rb", "w+")
    io.puts("7\n1 2 3 4 5 6\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n1\n1\n1\n1\n1\n0\n")
  end

end
