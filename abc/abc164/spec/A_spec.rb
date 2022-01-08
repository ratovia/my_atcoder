require 'rspec'

RSpec.describe 'test' do
  it 'test with "4 5\n"' do
    io = IO.popen("ruby abc164/A.rb", "w+")
    io.puts("4 5\n")
    io.close_write
    expect(io.readlines.join).to eq("unsafe\n")
  end

  it 'test with "100 2\n"' do
    io = IO.popen("ruby abc164/A.rb", "w+")
    io.puts("100 2\n")
    io.close_write
    expect(io.readlines.join).to eq("safe\n")
  end

  it 'test with "10 10\n"' do
    io = IO.popen("ruby abc164/A.rb", "w+")
    io.puts("10 10\n")
    io.close_write
    expect(io.readlines.join).to eq("unsafe\n")
  end

end
