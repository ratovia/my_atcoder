require 'rspec'

RSpec.describe 'test' do
  it 'test with "5 7 9\n"' do
    io = IO.popen("ruby abc147/A.rb", "w+")
    io.puts("5 7 9\n")
    io.close_write
    expect(io.readlines.join).to eq("win\n")
  end

  it 'test with "13 7 2\n"' do
    io = IO.popen("ruby abc147/A.rb", "w+")
    io.puts("13 7 2\n")
    io.close_write
    expect(io.readlines.join).to eq("bust\n")
  end

end
