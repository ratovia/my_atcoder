require 'rspec'

RSpec.describe 'test' do
  it 'test with "101\n"' do
    io = IO.popen("ruby abc081/A.rb", "w+")
    io.puts("101\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "000\n"' do
    io = IO.popen("ruby abc081/A.rb", "w+")
    io.puts("000\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

end
