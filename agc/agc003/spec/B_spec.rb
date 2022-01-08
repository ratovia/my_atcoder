require 'rspec'

RSpec.describe 'test' do
  it 'test with "4\n4\n0\n3\n2\n"' do
    io = IO.popen("ruby agc003/B.rb", "w+")
    io.puts("4\n4\n0\n3\n2\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

  it 'test with "8\n2\n0\n1\n6\n0\n8\n2\n1\n"' do
    io = IO.popen("ruby agc003/B.rb", "w+")
    io.puts("8\n2\n0\n1\n6\n0\n8\n2\n1\n")
    io.close_write
    expect(io.readlines.join).to eq("9\n")
  end

end
