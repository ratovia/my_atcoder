require 'rspec'

RSpec.describe 'test' do
  it 'test with "2 5\n"' do
    io = IO.popen("ruby abc144/A.rb", "w+")
    io.puts("2 5\n")
    io.close_write
    expect(io.readlines.join).to eq("10\n")
  end

  it 'test with "5 10\n"' do
    io = IO.popen("ruby abc144/A.rb", "w+")
    io.puts("5 10\n")
    io.close_write
    expect(io.readlines.join).to eq("-1\n")
  end

  it 'test with "9 9\n"' do
    io = IO.popen("ruby abc144/A.rb", "w+")
    io.puts("9 9\n")
    io.close_write
    expect(io.readlines.join).to eq("81\n")
  end

end
