require 'rspec'

RSpec.describe 'test' do
  it 'test with "9 45000\n"' do
    io = IO.popen("ruby abc085/C.rb", "w+")
    io.puts("9 45000\n")
    io.close_write
    expect(io.readlines.join).to eq("4 0 5\n")
  end

  it 'test with "20 196000\n"' do
    io = IO.popen("ruby abc085/C.rb", "w+")
    io.puts("20 196000\n")
    io.close_write
    expect(io.readlines.join).to eq("-1 -1 -1\n")
  end

  it 'test with "1000 1234000\n"' do
    io = IO.popen("ruby abc085/C.rb", "w+")
    io.puts("1000 1234000\n")
    io.close_write
    expect(io.readlines.join).to eq("14 27 959\n")
  end

  it 'test with "2000 20000000\n"' do
    io = IO.popen("ruby abc085/C.rb", "w+")
    io.puts("2000 20000000\n")
    io.close_write
    expect(io.readlines.join).to eq("2000 0 0\n")
  end

end
