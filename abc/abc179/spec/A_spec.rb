require 'rspec'

RSpec.describe 'test' do
  it 'test with "apple\n"' do
    io = IO.popen("ruby abc179/A.rb", "w+")
    io.puts("apple\n")
    io.close_write
    expect(io.readlines.join).to eq("apples\n")
  end

  it 'test with "bus\n"' do
    io = IO.popen("ruby abc179/A.rb", "w+")
    io.puts("bus\n")
    io.close_write
    expect(io.readlines.join).to eq("buses\n")
  end

  it 'test with "box\n"' do
    io = IO.popen("ruby abc179/A.rb", "w+")
    io.puts("box\n")
    io.close_write
    expect(io.readlines.join).to eq("boxs\n")
  end

end
