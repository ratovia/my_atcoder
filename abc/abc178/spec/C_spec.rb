require 'rspec'

RSpec.describe 'test' do
  it 'test with "2\n"' do
    io = IO.popen("ruby abc178/C.rb", "w+")
    io.puts("2\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "1\n"' do
    io = IO.popen("ruby abc178/C.rb", "w+")
    io.puts("1\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "869121\n"' do
    io = IO.popen("ruby abc178/C.rb", "w+")
    io.puts("869121\n")
    io.close_write
    expect(io.readlines.join).to eq("2511445\n")
  end

end
