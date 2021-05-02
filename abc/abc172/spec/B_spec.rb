require 'rspec'

RSpec.describe 'test' do
  it 'test with "cupofcoffee\ncupofhottea\n"' do
    io = IO.popen("ruby abc172/B.rb", "w+")
    io.puts("cupofcoffee\ncupofhottea\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

  it 'test with "abcde\nbcdea\n"' do
    io = IO.popen("ruby abc172/B.rb", "w+")
    io.puts("abcde\nbcdea\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n")
  end

  it 'test with "apple\napple\n"' do
    io = IO.popen("ruby abc172/B.rb", "w+")
    io.puts("apple\napple\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

end
