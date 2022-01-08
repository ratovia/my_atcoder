require 'rspec'

RSpec.describe 'test' do
  it 'test with "20 12 6\n"' do
    io = IO.popen("ruby abc176/A.rb", "w+")
    io.puts("20 12 6\n")
    io.close_write
    expect(io.readlines.join).to eq("12\n")
  end

  it 'test with "1000 1 1000\n"' do
    io = IO.popen("ruby abc176/A.rb", "w+")
    io.puts("1000 1 1000\n")
    io.close_write
    expect(io.readlines.join).to eq("1000000\n")
  end

end
