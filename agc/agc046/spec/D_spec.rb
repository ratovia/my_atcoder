require 'rspec'

RSpec.describe 'test' do
  it 'test with "0001\n"' do
    io = IO.popen("ruby agc046/D.rb", "w+")
    io.puts("0001\n")
    io.close_write
    expect(io.readlines.join).to eq("8\n")
  end

  it 'test with "110001\n"' do
    io = IO.popen("ruby agc046/D.rb", "w+")
    io.puts("110001\n")
    io.close_write
    expect(io.readlines.join).to eq("24\n")
  end

  it 'test with "11101111011111000000000110000001111100011111000000001111111110000000111111111\n"' do
    io = IO.popen("ruby agc046/D.rb", "w+")
    io.puts("11101111011111000000000110000001111100011111000000001111111110000000111111111\n")
    io.close_write
    expect(io.readlines.join).to eq("697354558\n")
  end

end
