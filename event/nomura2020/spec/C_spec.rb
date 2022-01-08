require 'rspec'

RSpec.describe 'test' do
  it 'test with "3\n0 1 1 2\n"' do
    io = IO.popen("ruby nomura2020/C.rb", "w+")
    io.puts("3\n0 1 1 2\n")
    io.close_write
    expect(io.readlines.join).to eq("7\n")
  end

  it 'test with "4\n0 0 1 0 2\n"' do
    io = IO.popen("ruby nomura2020/C.rb", "w+")
    io.puts("4\n0 0 1 0 2\n")
    io.close_write
    expect(io.readlines.join).to eq("10\n")
  end

  it 'test with "2\n0 3 1\n"' do
    io = IO.popen("ruby nomura2020/C.rb", "w+")
    io.puts("2\n0 3 1\n")
    io.close_write
    expect(io.readlines.join).to eq("-1\n")
  end

  it 'test with "1\n1 1\n"' do
    io = IO.popen("ruby nomura2020/C.rb", "w+")
    io.puts("1\n1 1\n")
    io.close_write
    expect(io.readlines.join).to eq("-1\n")
  end

  it 'test with "10\n0 0 1 1 2 3 5 8 13 21 34\n"' do
    io = IO.popen("ruby nomura2020/C.rb", "w+")
    io.puts("10\n0 0 1 1 2 3 5 8 13 21 34\n")
    io.close_write
    expect(io.readlines.join).to eq("264\n")
  end

end
