require 'rspec'

RSpec.describe 'test' do
  it 'test with "2 2 3\n1 1 3\n2 1 4\n1 2 5\n"' do
    io = IO.popen("ruby abc175/E.rb", "w+")
    io.puts("2 2 3\n1 1 3\n2 1 4\n1 2 5\n")
    io.close_write
    expect(io.readlines.join).to eq("8\n")
  end

  it 'test with "2 5 5\n1 1 3\n2 4 20\n1 2 1\n1 3 4\n1 4 2\n"' do
    io = IO.popen("ruby abc175/E.rb", "w+")
    io.puts("2 5 5\n1 1 3\n2 4 20\n1 2 1\n1 3 4\n1 4 2\n")
    io.close_write
    expect(io.readlines.join).to eq("29\n")
  end

  it 'test with "4 5 10\n2 5 12\n1 5 12\n2 3 15\n1 2 20\n1 1 28\n2 4 26\n3 2 27\n4 5 21\n3 5 10\n1 3 10\n"' do
    io = IO.popen("ruby abc175/E.rb", "w+")
    io.puts("4 5 10\n2 5 12\n1 5 12\n2 3 15\n1 2 20\n1 1 28\n2 4 26\n3 2 27\n4 5 21\n3 5 10\n1 3 10\n")
    io.close_write
    expect(io.readlines.join).to eq("142\n")
  end

end
