require 'rspec'

RSpec.describe 'test' do
  it 'test with "3 3\n1 2 1\n2 1 1\n1 3 2\n"' do
    io = IO.popen("ruby agc045/E.rb", "w+")
    io.puts("3 3\n1 2 1\n2 1 1\n1 3 2\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "2 2\n1 2 1\n2 1 1\n"' do
    io = IO.popen("ruby agc045/E.rb", "w+")
    io.puts("2 2\n1 2 1\n2 1 1\n")
    io.close_write
    expect(io.readlines.join).to eq("-1\n")
  end

  it 'test with "5 5\n1 2 1\n2 1 1\n1 3 2\n4 5 1\n5 4 1\n"' do
    io = IO.popen("ruby agc045/E.rb", "w+")
    io.puts("5 5\n1 2 1\n2 1 1\n1 3 2\n4 5 1\n5 4 1\n")
    io.close_write
    expect(io.readlines.join).to eq("6\n")
  end

  it 'test with "1 1\n1 1 1\n"' do
    io = IO.popen("ruby agc045/E.rb", "w+")
    io.puts("1 1\n1 1 1\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

end
