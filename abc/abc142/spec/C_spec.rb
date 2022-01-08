require 'rspec'

RSpec.describe 'test' do
  it 'test with "3\n2 3 1\n"' do
    io = IO.popen("ruby abc142/C.rb", "w+")
    io.puts("3\n2 3 1\n")
    io.close_write
    expect(io.readlines.join).to eq("3 1 2\n")
  end

  it 'test with "5\n1 2 3 4 5\n"' do
    io = IO.popen("ruby abc142/C.rb", "w+")
    io.puts("5\n1 2 3 4 5\n")
    io.close_write
    expect(io.readlines.join).to eq("1 2 3 4 5\n")
  end

  it 'test with "8\n8 2 7 3 4 5 6 1\n"' do
    io = IO.popen("ruby abc142/C.rb", "w+")
    io.puts("8\n8 2 7 3 4 5 6 1\n")
    io.close_write
    expect(io.readlines.join).to eq("8 2 4 5 6 7 3 1\n")
  end

end
