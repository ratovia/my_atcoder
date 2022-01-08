require 'rspec'

RSpec.describe 'test' do
  it 'test with "3 1\n3 1 4\n5 3 2\n"' do
    io = IO.popen("ruby abc156/F.rb", "w+")
    io.puts("3 1\n3 1 4\n5 3 2\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "7 3\n27 18 28 18 28 46 1000000000\n1000000000 1 7\n1000000000 2 10\n1000000000 3 12\n"' do
    io = IO.popen("ruby abc156/F.rb", "w+")
    io.puts("7 3\n27 18 28 18 28 46 1000000000\n1000000000 1 7\n1000000000 2 10\n1000000000 3 12\n")
    io.close_write
    expect(io.readlines.join).to eq("224489796\n214285714\n559523809\n")
  end

end
