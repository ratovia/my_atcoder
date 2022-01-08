require 'rspec'

RSpec.describe 'test' do
  it 'test with "3\n111\n"' do
    io = IO.popen("ruby agc039/C.rb", "w+")
    io.puts("3\n111\n")
    io.close_write
    expect(io.readlines.join).to eq("40\n")
  end

  it 'test with "6\n110101\n"' do
    io = IO.popen("ruby agc039/C.rb", "w+")
    io.puts("6\n110101\n")
    io.close_write
    expect(io.readlines.join).to eq("616\n")
  end

  it 'test with "30\n001110011011011101010111011100\n"' do
    io = IO.popen("ruby agc039/C.rb", "w+")
    io.puts("30\n001110011011011101010111011100\n")
    io.close_write
    expect(io.readlines.join).to eq("549320998\n")
  end

end
