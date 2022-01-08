require 'rspec'

RSpec.describe 'test' do
  it 'test with "6\n1 2 3 4 5 6\n"' do
    io = IO.popen("ruby abc162/F.rb", "w+")
    io.puts("6\n1 2 3 4 5 6\n")
    io.close_write
    expect(io.readlines.join).to eq("12\n")
  end

  it 'test with "5\n-1000 -100 -10 0 10\n"' do
    io = IO.popen("ruby abc162/F.rb", "w+")
    io.puts("5\n-1000 -100 -10 0 10\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "10\n1000000000 1000000000 1000000000 1000000000 1000000000 1000000000 1000000000 1000000000 1000000000 1000000000\n"' do
    io = IO.popen("ruby abc162/F.rb", "w+")
    io.puts("10\n1000000000 1000000000 1000000000 1000000000 1000000000 1000000000 1000000000 1000000000 1000000000 1000000000\n")
    io.close_write
    expect(io.readlines.join).to eq("5000000000\n")
  end

  it 'test with "27\n18 -28 18 28 -45 90 -45 23 -53 60 28 -74 -71 35 -26 -62 49 -77 57 24 -70 -93 69 -99 59 57 -49\n"' do
    io = IO.popen("ruby abc162/F.rb", "w+")
    io.puts("27\n18 -28 18 28 -45 90 -45 23 -53 60 28 -74 -71 35 -26 -62 49 -77 57 24 -70 -93 69 -99 59 57 -49\n")
    io.close_write
    expect(io.readlines.join).to eq("295\n")
  end

end
