require 'rspec'

RSpec.describe 'test' do
  it 'test with "5 2\n2 4 5 1 3\n3 4 -10 -8 8\n"' do
    io = IO.popen("ruby abc175/D.rb", "w+")
    io.puts("5 2\n2 4 5 1 3\n3 4 -10 -8 8\n")
    io.close_write
    expect(io.readlines.join).to eq("8\n")
  end

  it 'test with "2 3\n2 1\n10 -7\n"' do
    io = IO.popen("ruby abc175/D.rb", "w+")
    io.puts("2 3\n2 1\n10 -7\n")
    io.close_write
    expect(io.readlines.join).to eq("13\n")
  end

  it 'test with "3 3\n3 1 2\n-1000 -2000 -3000\n"' do
    io = IO.popen("ruby abc175/D.rb", "w+")
    io.puts("3 3\n3 1 2\n-1000 -2000 -3000\n")
    io.close_write
    expect(io.readlines.join).to eq("-1000\n")
  end

  it 'test with "10 58\n9 1 6 7 8 4 3 2 10 5\n695279662 988782657 -119067776 382975538 -151885171 -177220596 -169777795 37619092 389386780 980092719\n"' do
    io = IO.popen("ruby abc175/D.rb", "w+")
    io.puts("10 58\n9 1 6 7 8 4 3 2 10 5\n695279662 988782657 -119067776 382975538 -151885171 -177220596 -169777795 37619092 389386780 980092719\n")
    io.close_write
    expect(io.readlines.join).to eq("29507023469\n")
  end

end
