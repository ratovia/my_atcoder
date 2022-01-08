require 'rspec'

RSpec.describe 'test' do
  it 'test with "10\n"' do
    io = IO.popen("ruby abc144/C.rb", "w+")
    io.puts("10\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n")
  end

  it 'test with "50\n"' do
    io = IO.popen("ruby abc144/C.rb", "w+")
    io.puts("50\n")
    io.close_write
    expect(io.readlines.join).to eq("13\n")
  end

  it 'test with "10000000019\n"' do
    io = IO.popen("ruby abc144/C.rb", "w+")
    io.puts("10000000019\n")
    io.close_write
    expect(io.readlines.join).to eq("10000000018\n")
  end

end
