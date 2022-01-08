require 'rspec'

RSpec.describe 'test' do
  it 'test with "3\n1 3 7 9 5 4 8 6 2\n"' do
    io = IO.popen("ruby agc044/B.rb", "w+")
    io.puts("3\n1 3 7 9 5 4 8 6 2\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "1 2 3\n4 5 6\n7 8 9\n"' do
    io = IO.popen("ruby agc044/B.rb", "w+")
    io.puts("1 2 3\n4 5 6\n7 8 9\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n6 7 1 4 13 16 10 9 5 11 12 14 15 2 3 8\n")
  end

  it 'test with "3\n"' do
    io = IO.popen("ruby agc044/B.rb", "w+")
    io.puts("3\n")
    io.close_write
    expect(io.readlines.join).to eq("6\n11 21 35 22 7 36 27 34 8 20 15 13 16 1 24 3 2 17 26 9 18 32 31 23 19 14 4 25 10 29 28 33 12 6 5 30\n")
  end

  it 'test with "11\n"' do
    io = IO.popen("ruby agc044/B.rb", "w+")
    io.puts("11\n")
    io.close_write
    expect(io.readlines.join).to eq()
  end

end
