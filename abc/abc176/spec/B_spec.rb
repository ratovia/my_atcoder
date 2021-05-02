require 'rspec'

RSpec.describe 'test' do
  it 'test with "123456789\n"' do
    io = IO.popen("ruby abc176/B.rb", "w+")
    io.puts("123456789\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "0\n"' do
    io = IO.popen("ruby abc176/B.rb", "w+")
    io.puts("0\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "31415926535897932384626433832795028841971693993751058209749445923078164062862089986280\n"' do
    io = IO.popen("ruby abc176/B.rb", "w+")
    io.puts("31415926535897932384626433832795028841971693993751058209749445923078164062862089986280\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

end
