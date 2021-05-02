require 'rspec'

RSpec.describe 'test' do
  it 'test with "2\n"' do
    io = IO.popen("ruby abc172/A.rb", "w+")
    io.puts("2\n")
    io.close_write
    expect(io.readlines.join).to eq("14\n")
  end

  it 'test with "10\n"' do
    io = IO.popen("ruby abc172/A.rb", "w+")
    io.puts("10\n")
    io.close_write
    expect(io.readlines.join).to eq("1110\n")
  end

end
