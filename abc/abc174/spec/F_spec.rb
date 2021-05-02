require 'rspec'

RSpec.describe 'test' do
  it 'test with "4 3\n1 2 1 3\n1 3\n2 4\n3 3\n"' do
    io = IO.popen("ruby abc174/F.rb", "w+")
    io.puts("4 3\n1 2 1 3\n1 3\n2 4\n3 3\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n3\n1\n")
  end

  it 'test with "10 10\n2 5 6 5 2 1 7 9 7 2\n5 5\n2 4\n6 7\n2 2\n7 8\n7 9\n1 8\n6 9\n8 10\n6 8\n"' do
    io = IO.popen("ruby abc174/F.rb", "w+")
    io.puts("10 10\n2 5 6 5 2 1 7 9 7 2\n5 5\n2 4\n6 7\n2 2\n7 8\n7 9\n1 8\n6 9\n8 10\n6 8\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n2\n2\n1\n2\n2\n6\n3\n3\n3\n")
  end

end
