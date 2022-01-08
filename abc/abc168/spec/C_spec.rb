require 'rspec'

RSpec.describe 'test' do
  it 'test with "3 4 9 0\n"' do
    io = IO.popen("ruby abc168/C.rb", "w+")
    io.puts("3 4 9 0\n")
    io.close_write
    expect(io.readlines.join).to eq("5.00000000000000000000\n")
  end

  it 'test with "3 4 10 40\n"' do
    io = IO.popen("ruby abc168/C.rb", "w+")
    io.puts("3 4 10 40\n")
    io.close_write
    expect(io.readlines.join).to eq("4.56425719433005567605\n")
  end

end
