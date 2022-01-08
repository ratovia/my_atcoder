require 'rspec'

RSpec.describe 'test' do
  it 'test with "3\n1 2\n1 3\n"' do
    io = IO.popen("ruby abc160/F.rb", "w+")
    io.puts("3\n1 2\n1 3\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n1\n1\n")
  end

  it 'test with "2\n1 2\n"' do
    io = IO.popen("ruby abc160/F.rb", "w+")
    io.puts("2\n1 2\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n1\n")
  end

  it 'test with "5\n1 2\n2 3\n3 4\n3 5\n"' do
    io = IO.popen("ruby abc160/F.rb", "w+")
    io.puts("5\n1 2\n2 3\n3 4\n3 5\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n8\n12\n3\n3\n")
  end

  it 'test with "8\n1 2\n2 3\n3 4\n3 5\n3 6\n6 7\n6 8\n"' do
    io = IO.popen("ruby abc160/F.rb", "w+")
    io.puts("8\n1 2\n2 3\n3 4\n3 5\n3 6\n6 7\n6 8\n")
    io.close_write
    expect(io.readlines.join).to eq("40\n280\n840\n120\n120\n504\n72\n72\n")
  end

end
