require 'rspec'

RSpec.describe 'test' do
  it 'test with "2 1 1 3\n"' do
    io = IO.popen("ruby abc167/B.rb", "w+")
    io.puts("2 1 1 3\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "1 2 3 4\n"' do
    io = IO.popen("ruby abc167/B.rb", "w+")
    io.puts("1 2 3 4\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "2000000000 0 0 2000000000\n"' do
    io = IO.popen("ruby abc167/B.rb", "w+")
    io.puts("2000000000 0 0 2000000000\n")
    io.close_write
    expect(io.readlines.join).to eq("2000000000\n")
  end

end
