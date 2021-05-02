require 'rspec'

RSpec.describe 'test' do
  it 'test with "4\n4\n6\n10\n1000000000\n"' do
    io = IO.popen("ruby aising2020/F.rb", "w+")
    io.puts("4\n4\n6\n10\n1000000000\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n11\n4598\n257255556\n")
  end

end
