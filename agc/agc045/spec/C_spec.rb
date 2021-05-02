require 'rspec'

RSpec.describe 'test' do
  it 'test with "4 2 3\n"' do
    io = IO.popen("ruby agc045/C.rb", "w+")
    io.puts("4 2 3\n")
    io.close_write
    expect(io.readlines.join).to eq("11\n")
  end

  it 'test with "10 7 2\n"' do
    io = IO.popen("ruby agc045/C.rb", "w+")
    io.puts("10 7 2\n")
    io.close_write
    expect(io.readlines.join).to eq("533\n")
  end

  it 'test with "1000 100 10\n"' do
    io = IO.popen("ruby agc045/C.rb", "w+")
    io.puts("1000 100 10\n")
    io.close_write
    expect(io.readlines.join).to eq("828178524\n")
  end

end
