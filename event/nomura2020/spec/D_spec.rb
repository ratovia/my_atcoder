require 'rspec'

RSpec.describe 'test' do
  it 'test with "4\n2 1 -1 3\n"' do
    io = IO.popen("ruby nomura2020/D.rb", "w+")
    io.puts("4\n2 1 -1 3\n")
    io.close_write
    expect(io.readlines.join).to eq("8\n")
  end

  it 'test with "2\n2 1\n"' do
    io = IO.popen("ruby nomura2020/D.rb", "w+")
    io.puts("2\n2 1\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "10\n2 6 9 -1 6 9 -1 -1 -1 -1\n"' do
    io = IO.popen("ruby nomura2020/D.rb", "w+")
    io.puts("10\n2 6 9 -1 6 9 -1 -1 -1 -1\n")
    io.close_write
    expect(io.readlines.join).to eq("527841\n")
  end

end
