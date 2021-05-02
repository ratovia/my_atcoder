require 'rspec'

RSpec.describe 'test' do
  it 'test with "81 58\n"' do
    io = IO.popen("ruby abc113/A.rb", "w+")
    io.puts("81 58\n")
    io.close_write
    expect(io.readlines.join).to eq("110\n")
  end

  it 'test with "4 54\n"' do
    io = IO.popen("ruby abc113/A.rb", "w+")
    io.puts("4 54\n")
    io.close_write
    expect(io.readlines.join).to eq("31\n")
  end

end
