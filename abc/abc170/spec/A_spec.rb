require 'rspec'

RSpec.describe 'test' do
  it 'test with "0 2 3 4 5\n"' do
    io = IO.popen("ruby abc170/A.rb", "w+")
    io.puts("0 2 3 4 5\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "1 2 0 4 5\n"' do
    io = IO.popen("ruby abc170/A.rb", "w+")
    io.puts("1 2 0 4 5\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

end
