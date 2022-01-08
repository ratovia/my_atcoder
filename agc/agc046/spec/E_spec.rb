require 'rspec'

RSpec.describe 'test' do
  it 'test with "3\n2 4 3\n"' do
    io = IO.popen("ruby agc046/E.rb", "w+")
    io.puts("3\n2 4 3\n")
    io.close_write
    expect(io.readlines.join).to eq("2 1 3 2 2 3 1 2 3 \n")
  end

  it 'test with "4\n3 2 3 2\n"' do
    io = IO.popen("ruby agc046/E.rb", "w+")
    io.puts("4\n3 2 3 2\n")
    io.close_write
    expect(io.readlines.join).to eq("1 2 3 4 1 3 1 2 4 3 \n")
  end

  it 'test with "5\n3 1 4 1 5\n"' do
    io = IO.popen("ruby agc046/E.rb", "w+")
    io.puts("5\n3 1 4 1 5\n")
    io.close_write
    expect(io.readlines.join).to eq("-1\n")
  end

end
