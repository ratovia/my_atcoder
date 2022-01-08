require 'rspec'

RSpec.describe 'test' do
  it 'test with "3 5\n4 2 1\n2 3 1\n"' do
    io = IO.popen("ruby abc144/E.rb", "w+")
    io.puts("3 5\n4 2 1\n2 3 1\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "3 8\n4 2 1\n2 3 1\n"' do
    io = IO.popen("ruby abc144/E.rb", "w+")
    io.puts("3 8\n4 2 1\n2 3 1\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "11 14\n3 1 4 1 5 9 2 6 5 3 5\n8 9 7 9 3 2 3 8 4 6 2\n"' do
    io = IO.popen("ruby abc144/E.rb", "w+")
    io.puts("11 14\n3 1 4 1 5 9 2 6 5 3 5\n8 9 7 9 3 2 3 8 4 6 2\n")
    io.close_write
    expect(io.readlines.join).to eq("12\n")
  end

end
