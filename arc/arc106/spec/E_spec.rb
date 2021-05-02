require 'rspec'

RSpec.describe 'test' do
  it 'test with "3 3\n1 2 3\n"' do
    io = IO.popen("ruby arc106/E.rb", "w+")
    io.puts("3 3\n1 2 3\n")
    io.close_write
    expect(io.readlines.join).to eq("10\n")
  end

  it 'test with "10 10\n1 1 1 1 1 1 1 1 1 1\n"' do
    io = IO.popen("ruby arc106/E.rb", "w+")
    io.puts("10 10\n1 1 1 1 1 1 1 1 1 1\n")
    io.close_write
    expect(io.readlines.join).to eq("199\n")
  end

  it 'test with "2 5\n1234 5678\n"' do
    io = IO.popen("ruby arc106/E.rb", "w+")
    io.puts("2 5\n1234 5678\n")
    io.close_write
    expect(io.readlines.join).to eq("10\n")
  end

end
