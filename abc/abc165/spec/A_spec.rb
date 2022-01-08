require 'rspec'

RSpec.describe 'test' do
  it 'test with "7\n500 600\n"' do
    io = IO.popen("ruby abc165/A.rb", "w+")
    io.puts("7\n500 600\n")
    io.close_write
    expect(io.readlines.join).to eq("OK\n")
  end

  it 'test with "4\n5 7\n"' do
    io = IO.popen("ruby abc165/A.rb", "w+")
    io.puts("4\n5 7\n")
    io.close_write
    expect(io.readlines.join).to eq("NG\n")
  end

  it 'test with "1\n11 11\n"' do
    io = IO.popen("ruby abc165/A.rb", "w+")
    io.puts("1\n11 11\n")
    io.close_write
    expect(io.readlines.join).to eq("OK\n")
  end

end
