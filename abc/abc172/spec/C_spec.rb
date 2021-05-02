require 'rspec'

RSpec.describe 'test' do
  it 'test with "3 4 240\n60 90 120\n80 150 80 150\n"' do
    io = IO.popen("ruby abc172/C.rb", "w+")
    io.puts("3 4 240\n60 90 120\n80 150 80 150\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "3 4 730\n60 90 120\n80 150 80 150\n"' do
    io = IO.popen("ruby abc172/C.rb", "w+")
    io.puts("3 4 730\n60 90 120\n80 150 80 150\n")
    io.close_write
    expect(io.readlines.join).to eq("7\n")
  end

  it 'test with "5 4 1\n1000000000 1000000000 1000000000 1000000000 1000000000\n1000000000 1000000000 1000000000 1000000000\n"' do
    io = IO.popen("ruby abc172/C.rb", "w+")
    io.puts("5 4 1\n1000000000 1000000000 1000000000 1000000000 1000000000\n1000000000 1000000000 1000000000 1000000000\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

end
