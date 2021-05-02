require 'rspec'

RSpec.describe 'test' do
  it 'test with "5 6\n1 2 0\n0 1 1\n0 2 2\n-3 4 -1\n-2 6 3\n1 0 1\n0 1 2\n2 0 2\n-1 -4 5\n3 -2 4\n1 2 4\n"' do
    io = IO.popen("ruby abc168/F.rb", "w+")
    io.puts("5 6\n1 2 0\n0 1 1\n0 2 2\n-3 4 -1\n-2 6 3\n1 0 1\n0 1 2\n2 0 2\n-1 -4 5\n3 -2 4\n1 2 4\n")
    io.close_write
    expect(io.readlines.join).to eq("13\n")
  end

  it 'test with "6 1\n-3 -1 -2\n-3 -1 1\n-2 -1 2\n1 4 -2\n1 4 -1\n1 4 1\n3 1 4\n"' do
    io = IO.popen("ruby abc168/F.rb", "w+")
    io.puts("6 1\n-3 -1 -2\n-3 -1 1\n-2 -1 2\n1 4 -2\n1 4 -1\n1 4 1\n3 1 4\n")
    io.close_write
    expect(io.readlines.join).to eq("INF\n")
  end

end
