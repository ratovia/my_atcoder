require 'rspec'

RSpec.describe 'test' do
  it 'test with "9\n"' do
    io = IO.popen("ruby abc114/D.rb", "w+")
    io.puts("9\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "10\n"' do
    io = IO.popen("ruby abc114/D.rb", "w+")
    io.puts("10\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "100\n"' do
    io = IO.popen("ruby abc114/D.rb", "w+")
    io.puts("100\n")
    io.close_write
    expect(io.readlines.join).to eq("543\n")
  end

end
