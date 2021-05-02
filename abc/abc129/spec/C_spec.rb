require 'rspec'

RSpec.describe 'test' do
  it 'test with "6 1\n3\n"' do
    io = IO.popen("ruby abc129/C.rb", "w+")
    io.puts("6 1\n3\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

  it 'test with "10 2\n4\n5\n"' do
    io = IO.popen("ruby abc129/C.rb", "w+")
    io.puts("10 2\n4\n5\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "100 5\n1\n23\n45\n67\n89\n"' do
    io = IO.popen("ruby abc129/C.rb", "w+")
    io.puts("100 5\n1\n23\n45\n67\n89\n")
    io.close_write
    expect(io.readlines.join).to eq("608200469\n")
  end

end
