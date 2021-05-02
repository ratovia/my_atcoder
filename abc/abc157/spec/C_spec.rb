require 'rspec'

RSpec.describe 'test' do
  it 'test with "3 3\n1 7\n3 2\n1 7\n"' do
    io = IO.popen("ruby abc157/C.rb", "w+")
    io.puts("3 3\n1 7\n3 2\n1 7\n")
    io.close_write
    expect(io.readlines.join).to eq("702\n")
  end

  it 'test with "3 2\n2 1\n2 3\n"' do
    io = IO.popen("ruby abc157/C.rb", "w+")
    io.puts("3 2\n2 1\n2 3\n")
    io.close_write
    expect(io.readlines.join).to eq("-1\n")
  end

  it 'test with "3 1\n1 0\n"' do
    io = IO.popen("ruby abc157/C.rb", "w+")
    io.puts("3 1\n1 0\n")
    io.close_write
    expect(io.readlines.join).to eq("-1\n")
  end

end
