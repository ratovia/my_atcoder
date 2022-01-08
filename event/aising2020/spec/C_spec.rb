require 'rspec'

RSpec.describe 'test' do
  it 'test with "20\n"' do
    io = IO.popen("ruby aising2020/C.rb", "w+")
    io.puts("20\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n0\n0\n0\n0\n1\n0\n0\n0\n0\n3\n0\n0\n0\n0\n0\n3\n3\n0\n0\n")
  end

end
