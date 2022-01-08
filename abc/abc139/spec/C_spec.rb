require 'rspec'

RSpec.describe 'test' do
  it 'test with "5\n10 4 8 7 3\n"' do
    io = IO.popen("ruby abc139/C.rb", "w+")
    io.puts("5\n10 4 8 7 3\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "7\n4 4 5 6 6 5 5\n"' do
    io = IO.popen("ruby abc139/C.rb", "w+")
    io.puts("7\n4 4 5 6 6 5 5\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "4\n1 2 3 4\n"' do
    io = IO.popen("ruby abc139/C.rb", "w+")
    io.puts("4\n1 2 3 4\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

end
