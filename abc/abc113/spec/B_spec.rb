require 'rspec'

RSpec.describe 'test' do
  it 'test with "2\n12 5\n1000 2000\n"' do
    io = IO.popen("ruby abc113/B.rb", "w+")
    io.puts("2\n12 5\n1000 2000\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "3\n21 -11\n81234 94124 52141\n"' do
    io = IO.popen("ruby abc113/B.rb", "w+")
    io.puts("3\n21 -11\n81234 94124 52141\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

end
