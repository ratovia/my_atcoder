require 'rspec'

RSpec.describe 'test' do
  it 'test with "3 5 2\n3 2 3 4\n.....\n.@..@\n..@..\n"' do
    io = IO.popen("ruby abc170/F.rb", "w+")
    io.puts("3 5 2\n3 2 3 4\n.....\n.@..@\n..@..\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n")
  end

  it 'test with "1 6 4\n1 1 1 6\n......\n"' do
    io = IO.popen("ruby abc170/F.rb", "w+")
    io.puts("1 6 4\n1 1 1 6\n......\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "3 3 1\n2 1 2 3\n.@.\n.@.\n.@.\n"' do
    io = IO.popen("ruby abc170/F.rb", "w+")
    io.puts("3 3 1\n2 1 2 3\n.@.\n.@.\n.@.\n")
    io.close_write
    expect(io.readlines.join).to eq("-1\n")
  end

end
