require 'rspec'

RSpec.describe 'test' do
  it 'test with "2 2 2 998244353\n"' do
    io = IO.popen("ruby agc039/F.rb", "w+")
    io.puts("2 2 2 998244353\n")
    io.close_write
    expect(io.readlines.join).to eq("35\n")
  end

  it 'test with "2 3 4 998244353\n"' do
    io = IO.popen("ruby agc039/F.rb", "w+")
    io.puts("2 3 4 998244353\n")
    io.close_write
    expect(io.readlines.join).to eq("127090\n")
  end

  it 'test with "31 41 59 998244353\n"' do
    io = IO.popen("ruby agc039/F.rb", "w+")
    io.puts("31 41 59 998244353\n")
    io.close_write
    expect(io.readlines.join).to eq("827794103\n")
  end

end
