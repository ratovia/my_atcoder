require 'rspec'

RSpec.describe 'test' do
  it 'test with "24\n"' do
    io = IO.popen("ruby abc169/D.rb", "w+")
    io.puts("24\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "1\n"' do
    io = IO.popen("ruby abc169/D.rb", "w+")
    io.puts("1\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "64\n"' do
    io = IO.popen("ruby abc169/D.rb", "w+")
    io.puts("64\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "1000000007\n"' do
    io = IO.popen("ruby abc169/D.rb", "w+")
    io.puts("1000000007\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "997764507000\n"' do
    io = IO.popen("ruby abc169/D.rb", "w+")
    io.puts("997764507000\n")
    io.close_write
    expect(io.readlines.join).to eq("7\n")
  end

end
