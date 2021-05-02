require 'rspec'

RSpec.describe 'test' do
  it 'test with "6 2 4\n"' do
    io = IO.popen("ruby abc175/C.rb", "w+")
    io.puts("6 2 4\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "7 4 3\n"' do
    io = IO.popen("ruby abc175/C.rb", "w+")
    io.puts("7 4 3\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "10 1 2\n"' do
    io = IO.popen("ruby abc175/C.rb", "w+")
    io.puts("10 1 2\n")
    io.close_write
    expect(io.readlines.join).to eq("8\n")
  end

  it 'test with "1000000000000000 1000000000000000 1000000000000000\n"' do
    io = IO.popen("ruby abc175/C.rb", "w+")
    io.puts("1000000000000000 1000000000000000 1000000000000000\n")
    io.close_write
    expect(io.readlines.join).to eq("1000000000000000\n")
  end

end
