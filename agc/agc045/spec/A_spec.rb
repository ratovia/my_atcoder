require 'rspec'

RSpec.describe 'test' do
  it 'test with "3\n2\n1 2\n10\n2\n1 1\n10\n6\n2 3 4 5 6 7\n111000\n"' do
    io = IO.popen("ruby agc045/A.rb", "w+")
    io.puts("3\n2\n1 2\n10\n2\n1 1\n10\n6\n2 3 4 5 6 7\n111000\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n0\n0\n")
  end

end
