require 'rspec'

RSpec.describe 'test' do
  it 'test with "5 3\n1 2 2 4 5\n"' do
    io = IO.popen("ruby abc154/D.rb", "w+")
    io.puts("5 3\n1 2 2 4 5\n")
    io.close_write
    expect(io.readlines.join).to eq("7.000000000000\n")
  end

  it 'test with "4 1\n6 6 6 6\n"' do
    io = IO.popen("ruby abc154/D.rb", "w+")
    io.puts("4 1\n6 6 6 6\n")
    io.close_write
    expect(io.readlines.join).to eq("3.500000000000\n")
  end

  it 'test with "10 4\n17 13 13 12 15 20 10 13 17 11\n"' do
    io = IO.popen("ruby abc154/D.rb", "w+")
    io.puts("10 4\n17 13 13 12 15 20 10 13 17 11\n")
    io.close_write
    expect(io.readlines.join).to eq("32.000000000000\n")
  end

end
