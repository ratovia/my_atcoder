require 'rspec'

RSpec.describe 'test' do
  it 'test with "4 4\n1 4\n3 3\n6 2\n8 1\n"' do
    io = IO.popen("ruby abc075/D.rb", "w+")
    io.puts("4 4\n1 4\n3 3\n6 2\n8 1\n")
    io.close_write
    expect(io.readlines.join).to eq("21\n")
  end

  it 'test with "4 2\n0 0\n1 1\n2 2\n3 3\n"' do
    io = IO.popen("ruby abc075/D.rb", "w+")
    io.puts("4 2\n0 0\n1 1\n2 2\n3 3\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "4 3\n-1000000000 -1000000000\n1000000000 1000000000\n-999999999 999999999\n999999999 -999999999\n"' do
    io = IO.popen("ruby abc075/D.rb", "w+")
    io.puts("4 3\n-1000000000 -1000000000\n1000000000 1000000000\n-999999999 999999999\n999999999 -999999999\n")
    io.close_write
    expect(io.readlines.join).to eq("3999999996000000001\n")
  end

end
