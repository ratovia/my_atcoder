require 'rspec'

RSpec.describe 'test' do
  it 'test with "2 7\n"' do
    io = IO.popen("ruby abc115/D.rb", "w+")
    io.puts("2 7\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

  it 'test with "1 1\n"' do
    io = IO.popen("ruby abc115/D.rb", "w+")
    io.puts("1 1\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "50 4321098765432109\n"' do
    io = IO.popen("ruby abc115/D.rb", "w+")
    io.puts("50 4321098765432109\n")
    io.close_write
    expect(io.readlines.join).to eq("2160549382716056\n")
  end

end
