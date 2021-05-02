require 'rspec'

RSpec.describe 'test' do
  it 'test with "3 4\n2 2 4\n"' do
    io = IO.popen("ruby abc169/F.rb", "w+")
    io.puts("3 4\n2 2 4\n")
    io.close_write
    expect(io.readlines.join).to eq("6\n")
  end

  it 'test with "5 8\n9 9 9 9 9\n"' do
    io = IO.popen("ruby abc169/F.rb", "w+")
    io.puts("5 8\n9 9 9 9 9\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "10 10\n3 1 4 1 5 9 2 6 5 3\n"' do
    io = IO.popen("ruby abc169/F.rb", "w+")
    io.puts("10 10\n3 1 4 1 5 9 2 6 5 3\n")
    io.close_write
    expect(io.readlines.join).to eq("3296\n")
  end

end
