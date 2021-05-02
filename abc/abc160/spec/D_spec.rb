require 'rspec'

RSpec.describe 'test' do
  it 'test with "5 2 4\n"' do
    io = IO.popen("ruby abc160/D.rb", "w+")
    io.puts("5 2 4\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n4\n1\n0\n")
  end

  it 'test with "3 1 3\n"' do
    io = IO.popen("ruby abc160/D.rb", "w+")
    io.puts("3 1 3\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n0\n")
  end

  it 'test with "7 3 7\n"' do
    io = IO.popen("ruby abc160/D.rb", "w+")
    io.puts("7 3 7\n")
    io.close_write
    expect(io.readlines.join).to eq("7\n8\n4\n2\n0\n0\n")
  end

  it 'test with "10 4 8\n"' do
    io = IO.popen("ruby abc160/D.rb", "w+")
    io.puts("10 4 8\n")
    io.close_write
    expect(io.readlines.join).to eq("10\n12\n10\n8\n4\n1\n0\n0\n0\n")
  end

end
