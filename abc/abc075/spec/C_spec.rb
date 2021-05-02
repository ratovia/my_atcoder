require 'rspec'

RSpec.describe 'test' do
  it 'test with "7 7\n1 3\n2 7\n3 4\n4 5\n4 6\n5 6\n6 7\n"' do
    io = IO.popen("ruby abc075/C.rb", "w+")
    io.puts("7 7\n1 3\n2 7\n3 4\n4 5\n4 6\n5 6\n6 7\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

  it 'test with "3 3\n1 2\n1 3\n2 3\n"' do
    io = IO.popen("ruby abc075/C.rb", "w+")
    io.puts("3 3\n1 2\n1 3\n2 3\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "6 5\n1 2\n2 3\n3 4\n4 5\n5 6\n"' do
    io = IO.popen("ruby abc075/C.rb", "w+")
    io.puts("6 5\n1 2\n2 3\n3 4\n4 5\n5 6\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n")
  end

end
