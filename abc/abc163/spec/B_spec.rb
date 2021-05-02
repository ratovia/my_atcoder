require 'rspec'

RSpec.describe 'test' do
  it 'test with "41 2\n5 6\n"' do
    io = IO.popen("ruby abc163/B.rb", "w+")
    io.puts("41 2\n5 6\n")
    io.close_write
    expect(io.readlines.join).to eq("30\n")
  end

  it 'test with "10 2\n5 6\n"' do
    io = IO.popen("ruby abc163/B.rb", "w+")
    io.puts("10 2\n5 6\n")
    io.close_write
    expect(io.readlines.join).to eq("-1\n")
  end

  it 'test with "11 2\n5 6\n"' do
    io = IO.popen("ruby abc163/B.rb", "w+")
    io.puts("11 2\n5 6\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "314 15\n9 26 5 35 8 9 79 3 23 8 46 2 6 43 3\n"' do
    io = IO.popen("ruby abc163/B.rb", "w+")
    io.puts("314 15\n9 26 5 35 8 9 79 3 23 8 46 2 6 43 3\n")
    io.close_write
    expect(io.readlines.join).to eq("9\n")
  end

end
