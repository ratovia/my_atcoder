require 'rspec'

RSpec.describe 'test' do
  it 'test with "6\n1 1 1 2 2 3\n1 1 1 2 2 3\n"' do
    io = IO.popen("ruby abc178/F.rb", "w+")
    io.puts("6\n1 1 1 2 2 3\n1 1 1 2 2 3\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n2 2 3 1 1 1\n")
  end

  it 'test with "3\n1 1 2\n1 1 3\n"' do
    io = IO.popen("ruby abc178/F.rb", "w+")
    io.puts("3\n1 1 2\n1 1 3\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

  it 'test with "4\n1 1 2 3\n1 2 3 3\n"' do
    io = IO.popen("ruby abc178/F.rb", "w+")
    io.puts("4\n1 1 2 3\n1 2 3 3\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n3 3 1 2\n")
  end

end
