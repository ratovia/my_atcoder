require 'rspec'

RSpec.describe 'test' do
  it 'test with "1\nSRS\n"' do
    io = IO.popen("ruby agc044/C.rb", "w+")
    io.puts("1\nSRS\n")
    io.close_write
    expect(io.readlines.join).to eq("2 0 1 \n")
  end

  it 'test with "2\nRRSRSSSSR\n"' do
    io = IO.popen("ruby agc044/C.rb", "w+")
    io.puts("2\nRRSRSSSSR\n")
    io.close_write
    expect(io.readlines.join).to eq("3 8 1 0 5 7 6 2 4 \n")
  end

  it 'test with "3\nSRSRRSRRRSRRRR\n"' do
    io = IO.popen("ruby agc044/C.rb", "w+")
    io.puts("3\nSRSRRSRRRSRRRR\n")
    io.close_write
    expect(io.readlines.join).to eq("23 9 22 8 3 7 20 24 19 5 18 4 17 12 16 2 6 1 14 0 13 26 21 25 11 15 10 \n")
  end

end
