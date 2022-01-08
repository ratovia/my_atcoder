require 'rspec'

RSpec.describe 'test' do
  it 'test with "4 3 998244353\n"' do
    io = IO.popen("ruby agc046/F.rb", "w+")
    io.puts("4 3 998244353\n")
    io.close_write
    expect(io.readlines.join).to eq("56\n")
  end

  it 'test with "7 3 998244353\n"' do
    io = IO.popen("ruby agc046/F.rb", "w+")
    io.puts("7 3 998244353\n")
    io.close_write
    expect(io.readlines.join).to eq("720\n")
  end

  it 'test with "50 37 998244353\n"' do
    io = IO.popen("ruby agc046/F.rb", "w+")
    io.puts("50 37 998244353\n")
    io.close_write
    expect(io.readlines.join).to eq("495799508\n")
  end

end
