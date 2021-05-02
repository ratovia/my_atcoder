require 'rspec'

RSpec.describe 'test' do
  it 'test with "3 2 1\n1 2 1 2\n1 3 2 4\n1 11\n1 2\n2 5\n"' do
    io = IO.popen("ruby abc164/E.rb", "w+")
    io.puts("3 2 1\n1 2 1 2\n1 3 2 4\n1 11\n1 2\n2 5\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n14\n")
  end

  it 'test with "4 4 1\n1 2 1 5\n1 3 4 4\n2 4 2 2\n3 4 1 1\n3 1\n3 1\n5 2\n6 4\n"' do
    io = IO.popen("ruby abc164/E.rb", "w+")
    io.puts("4 4 1\n1 2 1 5\n1 3 4 4\n2 4 2 2\n3 4 1 1\n3 1\n3 1\n5 2\n6 4\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n5\n7\n")
  end

  it 'test with "6 5 1\n1 2 1 1\n1 3 2 1\n2 4 5 1\n3 5 11 1\n1 6 50 1\n1 10000\n1 3000\n1 700\n1 100\n1 1\n100 1\n"' do
    io = IO.popen("ruby abc164/E.rb", "w+")
    io.puts("6 5 1\n1 2 1 1\n1 3 2 1\n2 4 5 1\n3 5 11 1\n1 6 50 1\n1 10000\n1 3000\n1 700\n1 100\n1 1\n100 1\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n9003\n14606\n16510\n16576\n")
  end

  it 'test with "4 6 1000000000\n1 2 50 1\n1 3 50 5\n1 4 50 7\n2 3 50 2\n2 4 50 4\n3 4 50 3\n10 2\n4 4\n5 5\n7 7\n"' do
    io = IO.popen("ruby abc164/E.rb", "w+")
    io.puts("4 6 1000000000\n1 2 50 1\n1 3 50 5\n1 4 50 7\n2 3 50 2\n2 4 50 4\n3 4 50 3\n10 2\n4 4\n5 5\n7 7\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n3\n5\n")
  end

  it 'test with "2 1 0\n1 2 1 1\n1 1000000000\n1 1\n"' do
    io = IO.popen("ruby abc164/E.rb", "w+")
    io.puts("2 1 0\n1 2 1 1\n1 1000000000\n1 1\n")
    io.close_write
    expect(io.readlines.join).to eq("1000000001\n")
  end

end
