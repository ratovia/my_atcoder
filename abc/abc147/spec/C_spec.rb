require 'rspec'

RSpec.describe 'test' do
  it 'test with "3\n1\n2 1\n1\n1 1\n1\n2 0\n"' do
    io = IO.popen("ruby abc147/C.rb", "w+")
    io.puts("3\n1\n2 1\n1\n1 1\n1\n2 0\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "3\n2\n2 1\n3 0\n2\n3 1\n1 0\n2\n1 1\n2 0\n"' do
    io = IO.popen("ruby abc147/C.rb", "w+")
    io.puts("3\n2\n2 1\n3 0\n2\n3 1\n1 0\n2\n1 1\n2 0\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "2\n1\n2 0\n1\n1 0\n"' do
    io = IO.popen("ruby abc147/C.rb", "w+")
    io.puts("2\n1\n2 0\n1\n1 0\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

end
