require 'rspec'

RSpec.describe 'test' do
  it 'test with "2 998244353\n"' do
    io = IO.popen("ruby agc041/D.rb", "w+")
    io.puts("2 998244353\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "3 998244353\n"' do
    io = IO.popen("ruby agc041/D.rb", "w+")
    io.puts("3 998244353\n")
    io.close_write
    expect(io.readlines.join).to eq("7\n")
  end

  it 'test with "6 966666661\n"' do
    io = IO.popen("ruby agc041/D.rb", "w+")
    io.puts("6 966666661\n")
    io.close_write
    expect(io.readlines.join).to eq("66\n")
  end

  it 'test with "96 925309799\n"' do
    io = IO.popen("ruby agc041/D.rb", "w+")
    io.puts("96 925309799\n")
    io.close_write
    expect(io.readlines.join).to eq("83779\n")
  end

end
