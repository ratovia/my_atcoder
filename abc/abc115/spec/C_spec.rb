require 'rspec'

RSpec.describe 'test' do
  it 'test with "5 3\n10\n15\n11\n14\n12\n"' do
    io = IO.popen("ruby abc115/C.rb", "w+")
    io.puts("5 3\n10\n15\n11\n14\n12\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "5 3\n5\n7\n5\n7\n7\n"' do
    io = IO.popen("ruby abc115/C.rb", "w+")
    io.puts("5 3\n5\n7\n5\n7\n7\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

end
