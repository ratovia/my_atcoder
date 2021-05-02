require 'rspec'

RSpec.describe 'test' do
  it 'test with "2\n01\n10\n"' do
    io = IO.popen("ruby agc039/B.rb", "w+")
    io.puts("2\n01\n10\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "3\n011\n101\n110\n"' do
    io = IO.popen("ruby agc039/B.rb", "w+")
    io.puts("3\n011\n101\n110\n")
    io.close_write
    expect(io.readlines.join).to eq("-1\n")
  end

  it 'test with "6\n010110\n101001\n010100\n101000\n100000\n010000\n"' do
    io = IO.popen("ruby agc039/B.rb", "w+")
    io.puts("6\n010110\n101001\n010100\n101000\n100000\n010000\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

end
