require 'rspec'

RSpec.describe 'test' do
  it 'test with "1 2 1 1\n"' do
    io = IO.popen("ruby abc178/B.rb", "w+")
    io.puts("1 2 1 1\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "3 5 -4 -2\n"' do
    io = IO.popen("ruby abc178/B.rb", "w+")
    io.puts("3 5 -4 -2\n")
    io.close_write
    expect(io.readlines.join).to eq("-6\n")
  end

  it 'test with "-1000000000 0 -1000000000 0\n"' do
    io = IO.popen("ruby abc178/B.rb", "w+")
    io.puts("-1000000000 0 -1000000000 0\n")
    io.close_write
    expect(io.readlines.join).to eq("1000000000000000000\n")
  end

end
