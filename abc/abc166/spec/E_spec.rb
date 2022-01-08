require 'rspec'

RSpec.describe 'test' do
  it 'test with "6\n2 3 3 1 3 1\n"' do
    io = IO.popen("ruby abc166/E.rb", "w+")
    io.puts("6\n2 3 3 1 3 1\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "6\n5 2 4 2 8 8\n"' do
    io = IO.popen("ruby abc166/E.rb", "w+")
    io.puts("6\n5 2 4 2 8 8\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "32\n3 1 4 1 5 9 2 6 5 3 5 8 9 7 9 3 2 3 8 4 6 2 6 4 3 3 8 3 2 7 9 5\n"' do
    io = IO.popen("ruby abc166/E.rb", "w+")
    io.puts("32\n3 1 4 1 5 9 2 6 5 3 5 8 9 7 9 3 2 3 8 4 6 2 6 4 3 3 8 3 2 7 9 5\n")
    io.close_write
    expect(io.readlines.join).to eq("22\n")
  end

end
