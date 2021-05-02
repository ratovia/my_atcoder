require 'rspec'

RSpec.describe 'test' do
  it 'test with "3\n"' do
    io = IO.popen("ruby abc179/C.rb", "w+")
    io.puts("3\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "100\n"' do
    io = IO.popen("ruby abc179/C.rb", "w+")
    io.puts("100\n")
    io.close_write
    expect(io.readlines.join).to eq("473\n")
  end

  it 'test with "1000000\n"' do
    io = IO.popen("ruby abc179/C.rb", "w+")
    io.puts("1000000\n")
    io.close_write
    expect(io.readlines.join).to eq("13969985\n")
  end

end
