require 'rspec'

RSpec.describe 'test' do
  it 'test with "4 5\n1 2\n2 3\n2 4\n4 1\n4 3\n"' do
    io = IO.popen("ruby abc142/F.rb", "w+")
    io.puts("4 5\n1 2\n2 3\n2 4\n4 1\n4 3\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n1\n2\n4\n")
  end

  it 'test with "4 5\n1 2\n2 3\n2 4\n1 4\n4 3\n"' do
    io = IO.popen("ruby abc142/F.rb", "w+")
    io.puts("4 5\n1 2\n2 3\n2 4\n1 4\n4 3\n")
    io.close_write
    expect(io.readlines.join).to eq("-1\n")
  end

  it 'test with "6 9\n1 2\n2 3\n3 4\n4 5\n5 6\n5 1\n5 2\n6 1\n6 2\n"' do
    io = IO.popen("ruby abc142/F.rb", "w+")
    io.puts("6 9\n1 2\n2 3\n3 4\n4 5\n5 6\n5 1\n5 2\n6 1\n6 2\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n2\n3\n4\n5\n")
  end

end
