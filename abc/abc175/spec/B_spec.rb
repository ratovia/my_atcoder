require 'rspec'

RSpec.describe 'test' do
  it 'test with "5\n4 4 9 7 5\n"' do
    io = IO.popen("ruby abc175/B.rb", "w+")
    io.puts("5\n4 4 9 7 5\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n")
  end

  it 'test with "6\n4 5 4 3 3 5\n"' do
    io = IO.popen("ruby abc175/B.rb", "w+")
    io.puts("6\n4 5 4 3 3 5\n")
    io.close_write
    expect(io.readlines.join).to eq("8\n")
  end

  it 'test with "10\n9 4 6 1 9 6 10 6 6 8\n"' do
    io = IO.popen("ruby abc175/B.rb", "w+")
    io.puts("10\n9 4 6 1 9 6 10 6 6 8\n")
    io.close_write
    expect(io.readlines.join).to eq("39\n")
  end

  it 'test with "2\n1 1\n"' do
    io = IO.popen("ruby abc175/B.rb", "w+")
    io.puts("2\n1 1\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

end
