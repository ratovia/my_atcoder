require 'rspec'

RSpec.describe 'test' do
  it 'test with "2 5\n"' do
    io = IO.popen("ruby abc169/A.rb", "w+")
    io.puts("2 5\n")
    io.close_write
    expect(io.readlines.join).to eq("10\n")
  end

  it 'test with "100 100\n"' do
    io = IO.popen("ruby abc169/A.rb", "w+")
    io.puts("100 100\n")
    io.close_write
    expect(io.readlines.join).to eq("10000\n")
  end

end
