require 'rspec'

RSpec.describe 'test' do
  it 'test with "1024\n"' do
    io = IO.popen("ruby abc160/B.rb", "w+")
    io.puts("1024\n")
    io.close_write
    expect(io.readlines.join).to eq("2020\n")
  end

  it 'test with "0\n"' do
    io = IO.popen("ruby abc160/B.rb", "w+")
    io.puts("0\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "1000000000\n"' do
    io = IO.popen("ruby abc160/B.rb", "w+")
    io.puts("1000000000\n")
    io.close_write
    expect(io.readlines.join).to eq("2000000000\n")
  end

end
