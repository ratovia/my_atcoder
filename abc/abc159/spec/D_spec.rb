require 'rspec'

RSpec.describe 'test' do
  it 'test with "5\n1 1 2 1 2\n"' do
    io = IO.popen("ruby abc159/D.rb", "w+")
    io.puts("5\n1 1 2 1 2\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n2\n3\n2\n3\n")
  end

  it 'test with "4\n1 2 3 4\n"' do
    io = IO.popen("ruby abc159/D.rb", "w+")
    io.puts("4\n1 2 3 4\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n0\n0\n0\n")
  end

  it 'test with "5\n3 3 3 3 3\n"' do
    io = IO.popen("ruby abc159/D.rb", "w+")
    io.puts("5\n3 3 3 3 3\n")
    io.close_write
    expect(io.readlines.join).to eq("6\n6\n6\n6\n6\n")
  end

  it 'test with "8\n1 2 1 4 2 1 4 1\n"' do
    io = IO.popen("ruby abc159/D.rb", "w+")
    io.puts("8\n1 2 1 4 2 1 4 1\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n7\n5\n7\n7\n5\n7\n5\n")
  end

end
