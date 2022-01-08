require 'rspec'

RSpec.describe 'test' do
  it 'test with "3\n1 2\n-1 1\n2 -1\n"' do
    io = IO.popen("ruby abc168/E.rb", "w+")
    io.puts("3\n1 2\n-1 1\n2 -1\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n")
  end

  it 'test with "10\n3 2\n3 2\n-1 1\n2 -1\n-3 -9\n-8 12\n7 7\n8 1\n8 2\n8 4\n"' do
    io = IO.popen("ruby abc168/E.rb", "w+")
    io.puts("10\n3 2\n3 2\n-1 1\n2 -1\n-3 -9\n-8 12\n7 7\n8 1\n8 2\n8 4\n")
    io.close_write
    expect(io.readlines.join).to eq("479\n")
  end

end
