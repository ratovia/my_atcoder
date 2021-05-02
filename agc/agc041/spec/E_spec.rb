require 'rspec'

RSpec.describe 'test' do
  it 'test with "4 5 1\n1 3\n2 4\n1 2\n3 4\n2 3\n"' do
    io = IO.popen("ruby agc041/E.rb", "w+")
    io.puts("4 5 1\n1 3\n2 4\n1 2\n3 4\n2 3\n")
    io.close_write
    expect(io.readlines.join).to eq("^^^^^\n")
  end

  it 'test with "4 5 2\n1 3\n2 4\n1 2\n3 4\n2 3\n"' do
    io = IO.popen("ruby agc041/E.rb", "w+")
    io.puts("4 5 2\n1 3\n2 4\n1 2\n3 4\n2 3\n")
    io.close_write
    expect(io.readlines.join).to eq("v^^^^\n")
  end

  it 'test with "3 1 1\n1 2\n"' do
    io = IO.popen("ruby agc041/E.rb", "w+")
    io.puts("3 1 1\n1 2\n")
    io.close_write
    expect(io.readlines.join).to eq("-1\n")
  end

  it 'test with "2 1 2\n1 2\n"' do
    io = IO.popen("ruby agc041/E.rb", "w+")
    io.puts("2 1 2\n1 2\n")
    io.close_write
    expect(io.readlines.join).to eq("-1\n")
  end

end
