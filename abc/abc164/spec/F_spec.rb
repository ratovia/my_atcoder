require 'rspec'

RSpec.describe 'test' do
  it 'test with "2\n0 1\n1 0\n1 1\n1 0\n"' do
    io = IO.popen("ruby abc164/F.rb", "w+")
    io.puts("2\n0 1\n1 0\n1 1\n1 0\n")
    io.close_write
    expect(io.readlines.join).to eq("1 1\n1 0\n")
  end

  it 'test with "2\n1 1\n1 0\n15 15\n15 11\n"' do
    io = IO.popen("ruby abc164/F.rb", "w+")
    io.puts("2\n1 1\n1 0\n15 15\n15 11\n")
    io.close_write
    expect(io.readlines.join).to eq("15 11\n15 11\n")
  end

end
