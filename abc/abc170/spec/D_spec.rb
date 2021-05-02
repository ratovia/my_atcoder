require 'rspec'

RSpec.describe 'test' do
  it 'test with "5\n24 11 8 3 16\n"' do
    io = IO.popen("ruby abc170/D.rb", "w+")
    io.puts("5\n24 11 8 3 16\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "4\n5 5 5 5\n"' do
    io = IO.popen("ruby abc170/D.rb", "w+")
    io.puts("4\n5 5 5 5\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "10\n33 18 45 28 8 19 89 86 2 4\n"' do
    io = IO.popen("ruby abc170/D.rb", "w+")
    io.puts("10\n33 18 45 28 8 19 89 86 2 4\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n")
  end

end
