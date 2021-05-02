require 'rspec'

RSpec.describe 'test' do
  it 'test with "7 4\n"' do
    io = IO.popen("ruby abc161/C.rb", "w+")
    io.puts("7 4\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "2 6\n"' do
    io = IO.popen("ruby abc161/C.rb", "w+")
    io.puts("2 6\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "1000000000000000000 1\n"' do
    io = IO.popen("ruby abc161/C.rb", "w+")
    io.puts("1000000000000000000 1\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

end
