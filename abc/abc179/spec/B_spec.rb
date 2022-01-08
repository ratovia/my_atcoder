require 'rspec'

RSpec.describe 'test' do
  it 'test with "5\n1 2\n6 6\n4 4\n3 3\n3 2\n"' do
    io = IO.popen("ruby abc179/B.rb", "w+")
    io.puts("5\n1 2\n6 6\n4 4\n3 3\n3 2\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "5\n1 1\n2 2\n3 4\n5 5\n6 6\n"' do
    io = IO.popen("ruby abc179/B.rb", "w+")
    io.puts("5\n1 1\n2 2\n3 4\n5 5\n6 6\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

  it 'test with "6\n1 1\n2 2\n3 3\n4 4\n5 5\n6 6\n"' do
    io = IO.popen("ruby abc179/B.rb", "w+")
    io.puts("6\n1 1\n2 2\n3 3\n4 4\n5 5\n6 6\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

end
