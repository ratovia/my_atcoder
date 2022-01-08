require 'rspec'

RSpec.describe 'test' do
  it 'test with "8\n1\n2\n3\n4\n5\n6\n7\n8\n"' do
    io = IO.popen("ruby agc003/D.rb", "w+")
    io.puts("8\n1\n2\n3\n4\n5\n6\n7\n8\n")
    io.close_write
    expect(io.readlines.join).to eq("6\n")
  end

  it 'test with "6\n2\n4\n8\n16\n32\n64\n"' do
    io = IO.popen("ruby agc003/D.rb", "w+")
    io.puts("6\n2\n4\n8\n16\n32\n64\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "10\n1\n10\n100\n1000000007\n10000000000\n1000000009\n999999999\n999\n999\n999\n"' do
    io = IO.popen("ruby agc003/D.rb", "w+")
    io.puts("10\n1\n10\n100\n1000000007\n10000000000\n1000000009\n999999999\n999\n999\n999\n")
    io.close_write
    expect(io.readlines.join).to eq("9\n")
  end

end
