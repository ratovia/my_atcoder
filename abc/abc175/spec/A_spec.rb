require 'rspec'

RSpec.describe 'test' do
  it 'test with "RRS\n"' do
    io = IO.popen("ruby abc175/A.rb", "w+")
    io.puts("RRS\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "SSS\n"' do
    io = IO.popen("ruby abc175/A.rb", "w+")
    io.puts("SSS\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "RSR\n"' do
    io = IO.popen("ruby abc175/A.rb", "w+")
    io.puts("RSR\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

end
