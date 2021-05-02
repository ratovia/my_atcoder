require 'rspec'

RSpec.describe 'test' do
  it 'test with "5\n2 6 1 4 5\n"' do
    io = IO.popen("ruby abc154/C.rb", "w+")
    io.puts("5\n2 6 1 4 5\n")
    io.close_write
    expect(io.readlines.join).to eq("YES\n")
  end

  it 'test with "6\n4 1 3 1 6 2\n"' do
    io = IO.popen("ruby abc154/C.rb", "w+")
    io.puts("6\n4 1 3 1 6 2\n")
    io.close_write
    expect(io.readlines.join).to eq("NO\n")
  end

  it 'test with "2\n10000000 10000000\n"' do
    io = IO.popen("ruby abc154/C.rb", "w+")
    io.puts("2\n10000000 10000000\n")
    io.close_write
    expect(io.readlines.join).to eq("NO\n")
  end

end
