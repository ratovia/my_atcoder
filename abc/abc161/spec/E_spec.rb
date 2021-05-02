require 'rspec'

RSpec.describe 'test' do
  it 'test with "11 3 2\nooxxxoxxxoo\n"' do
    io = IO.popen("ruby abc161/E.rb", "w+")
    io.puts("11 3 2\nooxxxoxxxoo\n")
    io.close_write
    expect(io.readlines.join).to eq("6\n")
  end

  it 'test with "5 2 3\nooxoo\n"' do
    io = IO.popen("ruby abc161/E.rb", "w+")
    io.puts("5 2 3\nooxoo\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n5\n")
  end

  it 'test with "5 1 0\nooooo\n"' do
    io = IO.popen("ruby abc161/E.rb", "w+")
    io.puts("5 1 0\nooooo\n")
    io.close_write
    expect(io.readlines.join).to eq("")
  end

  it 'test with "16 4 3\nooxxoxoxxxoxoxxo\n"' do
    io = IO.popen("ruby abc161/E.rb", "w+")
    io.puts("16 4 3\nooxxoxoxxxoxoxxo\n")
    io.close_write
    expect(io.readlines.join).to eq("11\n16\n")
  end

end
