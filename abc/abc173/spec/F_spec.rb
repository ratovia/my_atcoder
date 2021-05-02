require 'rspec'

RSpec.describe 'test' do
  it 'test with "3\n1 3\n2 3\n"' do
    io = IO.popen("ruby abc173/F.rb", "w+")
    io.puts("3\n1 3\n2 3\n")
    io.close_write
    expect(io.readlines.join).to eq("7\n")
  end

  it 'test with "2\n1 2\n"' do
    io = IO.popen("ruby abc173/F.rb", "w+")
    io.puts("2\n1 2\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "10\n5 3\n5 7\n8 9\n1 9\n9 10\n8 4\n7 4\n6 10\n7 2\n"' do
    io = IO.popen("ruby abc173/F.rb", "w+")
    io.puts("10\n5 3\n5 7\n8 9\n1 9\n9 10\n8 4\n7 4\n6 10\n7 2\n")
    io.close_write
    expect(io.readlines.join).to eq("113\n")
  end

end
