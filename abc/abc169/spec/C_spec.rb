require 'rspec'

RSpec.describe 'test' do
  it 'test with "198 1.10\n"' do
    io = IO.popen("ruby abc169/C.rb", "w+")
    io.puts("198 1.10\n")
    io.close_write
    expect(io.readlines.join).to eq("217\n")
  end

  it 'test with "1 0.01\n"' do
    io = IO.popen("ruby abc169/C.rb", "w+")
    io.puts("1 0.01\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "1000000000000000 9.99\n"' do
    io = IO.popen("ruby abc169/C.rb", "w+")
    io.puts("1000000000000000 9.99\n")
    io.close_write
    expect(io.readlines.join).to eq("9990000000000000\n")
  end

end
