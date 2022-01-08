require 'rspec'

RSpec.describe 'test' do
  it 'test with "6 5\n4 7 10 6 5\n"' do
    io = IO.popen("ruby abc170/C.rb", "w+")
    io.puts("6 5\n4 7 10 6 5\n")
    io.close_write
    expect(io.readlines.join).to eq("8\n")
  end

  it 'test with "10 5\n4 7 10 6 5\n"' do
    io = IO.popen("ruby abc170/C.rb", "w+")
    io.puts("10 5\n4 7 10 6 5\n")
    io.close_write
    expect(io.readlines.join).to eq("9\n")
  end

  it 'test with "100 0\n\n"' do
    io = IO.popen("ruby abc170/C.rb", "w+")
    io.puts("100 0\n\n")
    io.close_write
    expect(io.readlines.join).to eq("100\n")
  end

end
