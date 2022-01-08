require 'rspec'

RSpec.describe 'test' do
  it 'test with "6 1 2 2\n2 1 1 3 0 2\n"' do
    io = IO.popen("ruby agc041/B.rb", "w+")
    io.puts("6 1 2 2\n2 1 1 3 0 2\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n")
  end

  it 'test with "6 1 5 2\n2 1 1 3 0 2\n"' do
    io = IO.popen("ruby agc041/B.rb", "w+")
    io.puts("6 1 5 2\n2 1 1 3 0 2\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "10 4 8 5\n7 2 3 6 1 6 5 4 6 5\n"' do
    io = IO.popen("ruby agc041/B.rb", "w+")
    io.puts("10 4 8 5\n7 2 3 6 1 6 5 4 6 5\n")
    io.close_write
    expect(io.readlines.join).to eq("8\n")
  end

end
