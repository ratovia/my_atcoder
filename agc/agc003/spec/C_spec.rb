require 'rspec'

RSpec.describe 'test' do
  it 'test with "4\n2\n4\n3\n1\n"' do
    io = IO.popen("ruby agc003/C.rb", "w+")
    io.puts("4\n2\n4\n3\n1\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "5\n10\n8\n5\n3\n2\n"' do
    io = IO.popen("ruby agc003/C.rb", "w+")
    io.puts("5\n10\n8\n5\n3\n2\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

end
