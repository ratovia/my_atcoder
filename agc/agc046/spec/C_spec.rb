require 'rspec'

RSpec.describe 'test' do
  it 'test with "0101 1\n"' do
    io = IO.popen("ruby agc046/C.rb", "w+")
    io.puts("0101 1\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

  it 'test with "01100110 2\n"' do
    io = IO.popen("ruby agc046/C.rb", "w+")
    io.puts("01100110 2\n")
    io.close_write
    expect(io.readlines.join).to eq("14\n")
  end

  it 'test with "1101010010101101110111100011011111011000111101110101010010101010101 20\n"' do
    io = IO.popen("ruby agc046/C.rb", "w+")
    io.puts("1101010010101101110111100011011111011000111101110101010010101010101 20\n")
    io.close_write
    expect(io.readlines.join).to eq("113434815\n")
  end

end
