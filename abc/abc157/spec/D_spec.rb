require 'rspec'

RSpec.describe 'test' do
  it 'test with "4 4 1\n2 1\n1 3\n3 2\n3 4\n4 1\n"' do
    io = IO.popen("ruby abc157/D.rb", "w+")
    io.puts("4 4 1\n2 1\n1 3\n3 2\n3 4\n4 1\n")
    io.close_write
    expect(io.readlines.join).to eq("0 1 0 1\n")
  end

  it 'test with "5 10 0\n1 2\n1 3\n1 4\n1 5\n3 2\n2 4\n2 5\n4 3\n5 3\n4 5\n"' do
    io = IO.popen("ruby abc157/D.rb", "w+")
    io.puts("5 10 0\n1 2\n1 3\n1 4\n1 5\n3 2\n2 4\n2 5\n4 3\n5 3\n4 5\n")
    io.close_write
    expect(io.readlines.join).to eq("0 0 0 0 0\n")
  end

  it 'test with "10 9 3\n10 1\n6 7\n8 2\n2 5\n8 4\n7 3\n10 9\n6 4\n5 8\n2 6\n7 5\n3 1\n"' do
    io = IO.popen("ruby abc157/D.rb", "w+")
    io.puts("10 9 3\n10 1\n6 7\n8 2\n2 5\n8 4\n7 3\n10 9\n6 4\n5 8\n2 6\n7 5\n3 1\n")
    io.close_write
    expect(io.readlines.join).to eq("1 3 5 4 3 3 3 3 1 0\n")
  end

end
