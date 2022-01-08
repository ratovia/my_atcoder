require 'rspec'

RSpec.describe 'test' do
  it 'test with "5 2\n1 1\n3 4\n"' do
    io = IO.popen("ruby abc179/D.rb", "w+")
    io.puts("5 2\n1 1\n3 4\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

  it 'test with "5 2\n3 3\n5 5\n"' do
    io = IO.popen("ruby abc179/D.rb", "w+")
    io.puts("5 2\n3 3\n5 5\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "5 1\n1 2\n"' do
    io = IO.popen("ruby abc179/D.rb", "w+")
    io.puts("5 1\n1 2\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n")
  end

  it 'test with "60 3\n5 8\n1 3\n10 15\n"' do
    io = IO.popen("ruby abc179/D.rb", "w+")
    io.puts("60 3\n5 8\n1 3\n10 15\n")
    io.close_write
    expect(io.readlines.join).to eq("221823067\n")
  end

end
