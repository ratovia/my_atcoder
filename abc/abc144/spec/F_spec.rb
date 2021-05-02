require 'rspec'

RSpec.describe 'test' do
  it 'test with "4 6\n1 4\n2 3\n1 3\n1 2\n3 4\n2 4\n"' do
    io = IO.popen("ruby abc144/F.rb", "w+")
    io.puts("4 6\n1 4\n2 3\n1 3\n1 2\n3 4\n2 4\n")
    io.close_write
    expect(io.readlines.join).to eq("1.5000000000\n")
  end

  it 'test with "3 2\n1 2\n2 3\n"' do
    io = IO.popen("ruby abc144/F.rb", "w+")
    io.puts("3 2\n1 2\n2 3\n")
    io.close_write
    expect(io.readlines.join).to eq("2.0000000000\n")
  end

  it 'test with "10 33\n3 7\n5 10\n8 9\n1 10\n4 6\n2 5\n1 7\n6 10\n1 4\n1 3\n8 10\n1 5\n2 6\n6 9\n5 6\n5 8\n3 6\n4 8\n2 7\n2 9\n6 7\n1 2\n5 9\n6 8\n9 10\n3 9\n7 8\n4 5\n2 10\n5 7\n3 5\n4 7\n4 9\n"' do
    io = IO.popen("ruby abc144/F.rb", "w+")
    io.puts("10 33\n3 7\n5 10\n8 9\n1 10\n4 6\n2 5\n1 7\n6 10\n1 4\n1 3\n8 10\n1 5\n2 6\n6 9\n5 6\n5 8\n3 6\n4 8\n2 7\n2 9\n6 7\n1 2\n5 9\n6 8\n9 10\n3 9\n7 8\n4 5\n2 10\n5 7\n3 5\n4 7\n4 9\n")
    io.close_write
    expect(io.readlines.join).to eq("3.0133333333\n")
  end

end
