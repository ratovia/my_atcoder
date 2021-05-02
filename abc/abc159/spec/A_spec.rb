require 'rspec'

RSpec.describe 'test' do
  it 'test with "2 1\n"' do
    io = IO.popen("ruby abc159/A.rb", "w+")
    io.puts("2 1\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "4 3\n"' do
    io = IO.popen("ruby abc159/A.rb", "w+")
    io.puts("4 3\n")
    io.close_write
    expect(io.readlines.join).to eq("9\n")
  end

  it 'test with "1 1\n"' do
    io = IO.popen("ruby abc159/A.rb", "w+")
    io.puts("1 1\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "13 3\n"' do
    io = IO.popen("ruby abc159/A.rb", "w+")
    io.puts("13 3\n")
    io.close_write
    expect(io.readlines.join).to eq("81\n")
  end

  it 'test with "0 3\n"' do
    io = IO.popen("ruby abc159/A.rb", "w+")
    io.puts("0 3\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

end
