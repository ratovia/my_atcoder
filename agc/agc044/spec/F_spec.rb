require 'rspec'

RSpec.describe 'test' do
  it 'test with "2\n"' do
    io = IO.popen("ruby agc044/F.rb", "w+")
    io.puts("2\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "3\n"' do
    io = IO.popen("ruby agc044/F.rb", "w+")
    io.puts("3\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "4\n"' do
    io = IO.popen("ruby agc044/F.rb", "w+")
    io.puts("4\n")
    io.close_write
    expect(io.readlines.join).to eq("7\n")
  end

  it 'test with "13\n"' do
    io = IO.popen("ruby agc044/F.rb", "w+")
    io.puts("13\n")
    io.close_write
    expect(io.readlines.join).to eq("6\n")
  end

  it 'test with "26\n"' do
    io = IO.popen("ruby agc044/F.rb", "w+")
    io.puts("26\n")
    io.close_write
    expect(io.readlines.join).to eq("-1\n")
  end

  it 'test with "123456789123456789\n"' do
    io = IO.popen("ruby agc044/F.rb", "w+")
    io.puts("123456789123456789\n")
    io.close_write
    expect(io.readlines.join).to eq("-1\n")
  end

end
