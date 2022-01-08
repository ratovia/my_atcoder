require 'rspec'

RSpec.describe 'test' do
  it 'test with "1 1 2 2\n"' do
    io = IO.popen("ruby agc046/B.rb", "w+")
    io.puts("1 1 2 2\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "2 1 3 4\n"' do
    io = IO.popen("ruby agc046/B.rb", "w+")
    io.puts("2 1 3 4\n")
    io.close_write
    expect(io.readlines.join).to eq("65\n")
  end

  it 'test with "31 41 59 265\n"' do
    io = IO.popen("ruby agc046/B.rb", "w+")
    io.puts("31 41 59 265\n")
    io.close_write
    expect(io.readlines.join).to eq("387222020\n")
  end

end
