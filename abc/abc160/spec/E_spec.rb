require 'rspec'

RSpec.describe 'test' do
  it 'test with "1 2 2 2 1\n2 4\n5 1\n3\n"' do
    io = IO.popen("ruby abc160/E.rb", "w+")
    io.puts("1 2 2 2 1\n2 4\n5 1\n3\n")
    io.close_write
    expect(io.readlines.join).to eq("12\n")
  end

  it 'test with "2 2 2 2 2\n8 6\n9 1\n2 1\n"' do
    io = IO.popen("ruby abc160/E.rb", "w+")
    io.puts("2 2 2 2 2\n8 6\n9 1\n2 1\n")
    io.close_write
    expect(io.readlines.join).to eq("25\n")
  end

  it 'test with "2 2 4 4 4\n11 12 13 14\n21 22 23 24\n1 2 3 4\n"' do
    io = IO.popen("ruby abc160/E.rb", "w+")
    io.puts("2 2 4 4 4\n11 12 13 14\n21 22 23 24\n1 2 3 4\n")
    io.close_write
    expect(io.readlines.join).to eq("74\n")
  end

end
