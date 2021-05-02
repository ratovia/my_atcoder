require 'rspec'

RSpec.describe 'test' do
  it 'test with "a\n4\n2 1 p\n1\n2 2 c\n1\n"' do
    io = IO.popen("ruby abc158/D.rb", "w+")
    io.puts("a\n4\n2 1 p\n1\n2 2 c\n1\n")
    io.close_write
    expect(io.readlines.join).to eq("cpa\n")
  end

  it 'test with "a\n6\n2 2 a\n2 1 b\n1\n2 2 c\n1\n1\n"' do
    io = IO.popen("ruby abc158/D.rb", "w+")
    io.puts("a\n6\n2 2 a\n2 1 b\n1\n2 2 c\n1\n1\n")
    io.close_write
    expect(io.readlines.join).to eq("aabc\n")
  end

  it 'test with "y\n1\n2 1 x\n"' do
    io = IO.popen("ruby abc158/D.rb", "w+")
    io.puts("y\n1\n2 1 x\n")
    io.close_write
    expect(io.readlines.join).to eq("xy\n")
  end

end
