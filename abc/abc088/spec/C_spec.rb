require 'rspec'

RSpec.describe 'test' do
  it 'test with "1 0 1\n2 1 2\n1 0 1\n"' do
    io = IO.popen("ruby abc088/C.rb", "w+")
    io.puts("1 0 1\n2 1 2\n1 0 1\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "2 2 2\n2 1 2\n2 2 2\n"' do
    io = IO.popen("ruby abc088/C.rb", "w+")
    io.puts("2 2 2\n2 1 2\n2 2 2\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

  it 'test with "0 8 8\n0 8 8\n0 8 8\n"' do
    io = IO.popen("ruby abc088/C.rb", "w+")
    io.puts("0 8 8\n0 8 8\n0 8 8\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "1 8 6\n2 9 7\n0 7 7\n"' do
    io = IO.popen("ruby abc088/C.rb", "w+")
    io.puts("1 8 6\n2 9 7\n0 7 7\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

end
