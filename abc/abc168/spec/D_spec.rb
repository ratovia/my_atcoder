require 'rspec'

RSpec.describe 'test' do
  it 'test with "4 4\n1 2\n2 3\n3 4\n4 2\n"' do
    io = IO.popen("ruby abc168/D.rb", "w+")
    io.puts("4 4\n1 2\n2 3\n3 4\n4 2\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n1\n2\n2\n")
  end

  it 'test with "6 9\n3 4\n6 1\n2 4\n5 3\n4 6\n1 5\n6 2\n4 5\n5 6\n"' do
    io = IO.popen("ruby abc168/D.rb", "w+")
    io.puts("6 9\n3 4\n6 1\n2 4\n5 3\n4 6\n1 5\n6 2\n4 5\n5 6\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n6\n5\n5\n1\n1\n")
  end

end
