require 'rspec'

RSpec.describe 'test' do
  it 'test with "2\n2\n2\n100\n"' do
    io = IO.popen("ruby abc087/B.rb", "w+")
    io.puts("2\n2\n2\n100\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "5\n1\n0\n150\n"' do
    io = IO.popen("ruby abc087/B.rb", "w+")
    io.puts("5\n1\n0\n150\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "30\n40\n50\n6000\n"' do
    io = IO.popen("ruby abc087/B.rb", "w+")
    io.puts("30\n40\n50\n6000\n")
    io.close_write
    expect(io.readlines.join).to eq("213\n")
  end

end
