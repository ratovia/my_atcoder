require 'rspec'

RSpec.describe 'test' do
  it 'test with "5 1\n1 0 0 1 0\n"' do
    io = IO.popen("ruby tokiomarine2020/C.rb", "w+")
    io.puts("5 1\n1 0 0 1 0\n")
    io.close_write
    expect(io.readlines.join).to eq("1 2 2 1 2\n")
  end

  it 'test with "5 2\n1 0 0 1 0\n"' do
    io = IO.popen("ruby tokiomarine2020/C.rb", "w+")
    io.puts("5 2\n1 0 0 1 0\n")
    io.close_write
    expect(io.readlines.join).to eq("3 3 4 4 3\n")
  end

end
