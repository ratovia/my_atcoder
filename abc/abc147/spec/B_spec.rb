require 'rspec'

RSpec.describe 'test' do
  it 'test with "redcoder\n"' do
    io = IO.popen("ruby abc147/B.rb", "w+")
    io.puts("redcoder\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "vvvvvv\n"' do
    io = IO.popen("ruby abc147/B.rb", "w+")
    io.puts("vvvvvv\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "abcdabc\n"' do
    io = IO.popen("ruby abc147/B.rb", "w+")
    io.puts("abcdabc\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

end
