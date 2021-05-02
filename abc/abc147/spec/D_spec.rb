require 'rspec'

RSpec.describe 'test' do
  it 'test with "3\n1 2 3\n"' do
    io = IO.popen("ruby abc147/D.rb", "w+")
    io.puts("3\n1 2 3\n")
    io.close_write
    expect(io.readlines.join).to eq("6\n")
  end

  it 'test with "10\n3 1 4 1 5 9 2 6 5 3\n"' do
    io = IO.popen("ruby abc147/D.rb", "w+")
    io.puts("10\n3 1 4 1 5 9 2 6 5 3\n")
    io.close_write
    expect(io.readlines.join).to eq("237\n")
  end

  it 'test with "10\n3 14 159 2653 58979 323846 2643383 27950288 419716939 9375105820\n"' do
    io = IO.popen("ruby abc147/D.rb", "w+")
    io.puts("10\n3 14 159 2653 58979 323846 2643383 27950288 419716939 9375105820\n")
    io.close_write
    expect(io.readlines.join).to eq("103715602\n")
  end

end
