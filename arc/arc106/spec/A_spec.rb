require 'rspec'

RSpec.describe 'test' do
  it 'test with "106\n"' do
    io = IO.popen("ruby arc106/A.rb", "w+")
    io.puts("106\n")
    io.close_write
    expect(io.readlines.join).to eq("4 2\n")
  end

  it 'test with "1024\n"' do
    io = IO.popen("ruby arc106/A.rb", "w+")
    io.puts("1024\n")
    io.close_write
    expect(io.readlines.join).to eq("-1\n")
  end

  it 'test with "10460353208\n"' do
    io = IO.popen("ruby arc106/A.rb", "w+")
    io.puts("10460353208\n")
    io.close_write
    expect(io.readlines.join).to eq("21 1\n")
  end

end
