require 'rspec'

RSpec.describe 'test' do
  it 'test with "4 3\n1 2 3 4\n1 3\n2 3\n2 4\n"' do
    io = IO.popen("ruby abc166/C.rb", "w+")
    io.puts("4 3\n1 2 3 4\n1 3\n2 3\n2 4\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "6 5\n8 6 9 1 2 1\n1 3\n4 2\n4 3\n4 6\n4 6\n"' do
    io = IO.popen("ruby abc166/C.rb", "w+")
    io.puts("6 5\n8 6 9 1 2 1\n1 3\n4 2\n4 3\n4 6\n4 6\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

end
