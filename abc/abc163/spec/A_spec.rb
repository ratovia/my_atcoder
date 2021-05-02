require 'rspec'

RSpec.describe 'test' do
  it 'test with "1\n"' do
    io = IO.popen("ruby abc163/A.rb", "w+")
    io.puts("1\n")
    io.close_write
    expect(io.readlines.join).to eq("6.28318530717958623200\n")
  end

  it 'test with "73\n"' do
    io = IO.popen("ruby abc163/A.rb", "w+")
    io.puts("73\n")
    io.close_write
    expect(io.readlines.join).to eq("458.67252742410977361942\n")
  end

end
