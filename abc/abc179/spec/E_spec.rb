require 'rspec'

RSpec.describe 'test' do
  it 'test with "6 2 1001\n"' do
    io = IO.popen("ruby abc179/E.rb", "w+")
    io.puts("6 2 1001\n")
    io.close_write
    expect(io.readlines.join).to eq("1369\n")
  end

  it 'test with "1000 2 16\n"' do
    io = IO.popen("ruby abc179/E.rb", "w+")
    io.puts("1000 2 16\n")
    io.close_write
    expect(io.readlines.join).to eq("6\n")
  end

  it 'test with "10000000000 10 99959\n"' do
    io = IO.popen("ruby abc179/E.rb", "w+")
    io.puts("10000000000 10 99959\n")
    io.close_write
    expect(io.readlines.join).to eq("492443256176507\n")
  end

end
