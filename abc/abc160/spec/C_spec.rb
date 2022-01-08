require 'rspec'

RSpec.describe 'test' do
  it 'test with "20 3\n5 10 15\n"' do
    io = IO.popen("ruby abc160/C.rb", "w+")
    io.puts("20 3\n5 10 15\n")
    io.close_write
    expect(io.readlines.join).to eq("10\n")
  end

  it 'test with "20 3\n0 5 15\n"' do
    io = IO.popen("ruby abc160/C.rb", "w+")
    io.puts("20 3\n0 5 15\n")
    io.close_write
    expect(io.readlines.join).to eq("10\n")
  end

end
