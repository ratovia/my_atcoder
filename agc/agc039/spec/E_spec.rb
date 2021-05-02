require 'rspec'

RSpec.describe 'test' do
  it 'test with "3\n011111\n101111\n110111\n111011\n111101\n111110\n"' do
    io = IO.popen("ruby agc039/E.rb", "w+")
    io.puts("3\n011111\n101111\n110111\n111011\n111101\n111110\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "4\n01111100\n10011111\n10011100\n11101111\n11110111\n11111011\n01011101\n01011110\n"' do
    io = IO.popen("ruby agc039/E.rb", "w+")
    io.puts("4\n01111100\n10011111\n10011100\n11101111\n11110111\n11111011\n01011101\n01011110\n")
    io.close_write
    expect(io.readlines.join).to eq("6\n")
  end

  it 'test with "8\n0111101111111111\n1011101111111111\n1101101111011101\n1110111111111111\n1111011111110111\n0001101111111111\n1111110111011111\n1111111011111111\n1111111101111111\n1111111110111111\n1101110111011111\n1111111111101111\n1111011111110111\n1111111111111011\n1101111111111101\n1111111111111110\n"' do
    io = IO.popen("ruby agc039/E.rb", "w+")
    io.puts("8\n0111101111111111\n1011101111111111\n1101101111011101\n1110111111111111\n1111011111110111\n0001101111111111\n1111110111011111\n1111111011111111\n1111111101111111\n1111111110111111\n1101110111011111\n1111111111101111\n1111011111110111\n1111111111111011\n1101111111111101\n1111111111111110\n")
    io.close_write
    expect(io.readlines.join).to eq("4762\n")
  end

end
