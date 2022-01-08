require 'rspec'

RSpec.describe 'test' do
  it 'test with "4\n"' do
    io = IO.popen("ruby abc142/A.rb", "w+")
    io.puts("4\n")
    io.close_write
    expect(io.readlines.join).to eq("0.5000000000\n")
  end

  it 'test with "5\n"' do
    io = IO.popen("ruby abc142/A.rb", "w+")
    io.puts("5\n")
    io.close_write
    expect(io.readlines.join).to eq("0.6000000000\n")
  end

  it 'test with "1\n"' do
    io = IO.popen("ruby abc142/A.rb", "w+")
    io.puts("1\n")
    io.close_write
    expect(io.readlines.join).to eq("1.0000000000\n")
  end

end
