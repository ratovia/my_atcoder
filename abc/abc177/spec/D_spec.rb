require 'rspec'

RSpec.describe 'test' do
  it 'test with "5 3\n1 2\n3 4\n5 1\n"' do
    io = IO.popen("ruby abc177/D.rb", "w+")
    io.puts("5 3\n1 2\n3 4\n5 1\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "4 10\n1 2\n2 1\n1 2\n2 1\n1 2\n1 3\n1 4\n2 3\n2 4\n3 4\n"' do
    io = IO.popen("ruby abc177/D.rb", "w+")
    io.puts("4 10\n1 2\n2 1\n1 2\n2 1\n1 2\n1 3\n1 4\n2 3\n2 4\n3 4\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

  it 'test with "10 4\n3 1\n4 1\n5 9\n2 6\n"' do
    io = IO.popen("ruby abc177/D.rb", "w+")
    io.puts("10 4\n3 1\n4 1\n5 9\n2 6\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

end
