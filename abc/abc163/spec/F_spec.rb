require 'rspec'

RSpec.describe 'test' do
  it 'test with "3\n1 2 1\n1 2\n2 3\n"' do
    io = IO.popen("ruby abc163/F.rb", "w+")
    io.puts("3\n1 2 1\n1 2\n2 3\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n4\n0\n")
  end

  it 'test with "1\n1\n"' do
    io = IO.popen("ruby abc163/F.rb", "w+")
    io.puts("1\n1\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "2\n1 2\n1 2\n"' do
    io = IO.popen("ruby abc163/F.rb", "w+")
    io.puts("2\n1 2\n1 2\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n2\n")
  end

  it 'test with "5\n1 2 3 4 5\n1 2\n2 3\n3 4\n3 5\n"' do
    io = IO.popen("ruby abc163/F.rb", "w+")
    io.puts("5\n1 2 3 4 5\n1 2\n2 3\n3 4\n3 5\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n8\n10\n5\n5\n")
  end

  it 'test with "8\n2 7 2 5 4 1 7 5\n3 1\n1 2\n2 7\n4 5\n5 6\n6 8\n7 8\n"' do
    io = IO.popen("ruby abc163/F.rb", "w+")
    io.puts("8\n2 7 2 5 4 1 7 5\n3 1\n1 2\n2 7\n4 5\n5 6\n6 8\n7 8\n")
    io.close_write
    expect(io.readlines.join).to eq("18\n15\n0\n14\n23\n0\n23\n0\n")
  end

end
