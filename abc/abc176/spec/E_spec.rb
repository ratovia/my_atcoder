require 'rspec'

RSpec.describe 'test' do
  it 'test with "2 3 3\n2 2\n1 1\n1 3\n"' do
    io = IO.popen("ruby abc176/E.rb", "w+")
    io.puts("2 3 3\n2 2\n1 1\n1 3\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "3 3 4\n3 3\n3 1\n1 1\n1 2\n"' do
    io = IO.popen("ruby abc176/E.rb", "w+")
    io.puts("3 3 4\n3 3\n3 1\n1 1\n1 2\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "5 5 10\n2 5\n4 3\n2 3\n5 5\n2 2\n5 4\n5 3\n5 1\n3 5\n1 4\n"' do
    io = IO.popen("ruby abc176/E.rb", "w+")
    io.puts("5 5 10\n2 5\n4 3\n2 3\n5 5\n2 2\n5 4\n5 3\n5 1\n3 5\n1 4\n")
    io.close_write
    expect(io.readlines.join).to eq("6\n")
  end

end
