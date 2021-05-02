require 'rspec'

RSpec.describe 'test' do
  it 'test with "5 3 4 10007\n"' do
    io = IO.popen("ruby abc129/F.rb", "w+")
    io.puts("5 3 4 10007\n")
    io.close_write
    expect(io.readlines.join).to eq("5563\n")
  end

  it 'test with "4 8 1 1000000\n"' do
    io = IO.popen("ruby abc129/F.rb", "w+")
    io.puts("4 8 1 1000000\n")
    io.close_write
    expect(io.readlines.join).to eq("891011\n")
  end

  it 'test with "107 10000000000007 1000000000000007 998244353\n"' do
    io = IO.popen("ruby abc129/F.rb", "w+")
    io.puts("107 10000000000007 1000000000000007 998244353\n")
    io.close_write
    expect(io.readlines.join).to eq("39122908\n")
  end

end
