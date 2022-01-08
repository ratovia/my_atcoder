require 'rspec'

RSpec.describe 'test' do
  it 'test with "1 2 3\n"' do
    io = IO.popen("ruby abc161/A.rb", "w+")
    io.puts("1 2 3\n")
    io.close_write
    expect(io.readlines.join).to eq("3 1 2\n")
  end

  it 'test with "100 100 100\n"' do
    io = IO.popen("ruby abc161/A.rb", "w+")
    io.puts("100 100 100\n")
    io.close_write
    expect(io.readlines.join).to eq("100 100 100\n")
  end

  it 'test with "41 59 31\n"' do
    io = IO.popen("ruby abc161/A.rb", "w+")
    io.puts("41 59 31\n")
    io.close_write
    expect(io.readlines.join).to eq("31 41 59\n")
  end

end
