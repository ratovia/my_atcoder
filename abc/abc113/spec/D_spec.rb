require 'rspec'

RSpec.describe 'test' do
  it 'test with "1 3 2\n"' do
    io = IO.popen("ruby abc113/D.rb", "w+")
    io.puts("1 3 2\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "1 3 1\n"' do
    io = IO.popen("ruby abc113/D.rb", "w+")
    io.puts("1 3 1\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "2 3 3\n"' do
    io = IO.popen("ruby abc113/D.rb", "w+")
    io.puts("2 3 3\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "2 3 1\n"' do
    io = IO.popen("ruby abc113/D.rb", "w+")
    io.puts("2 3 1\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n")
  end

  it 'test with "7 1 1\n"' do
    io = IO.popen("ruby abc113/D.rb", "w+")
    io.puts("7 1 1\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "15 8 5\n"' do
    io = IO.popen("ruby abc113/D.rb", "w+")
    io.puts("15 8 5\n")
    io.close_write
    expect(io.readlines.join).to eq("437760187\n")
  end

end
