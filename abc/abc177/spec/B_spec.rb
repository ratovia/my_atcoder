require 'rspec'

RSpec.describe 'test' do
  it 'test with "cabacc\nabc\n"' do
    io = IO.popen("ruby abc177/B.rb", "w+")
    io.puts("cabacc\nabc\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "codeforces\natcoder\n"' do
    io = IO.popen("ruby abc177/B.rb", "w+")
    io.puts("codeforces\natcoder\n")
    io.close_write
    expect(io.readlines.join).to eq("6\n")
  end

end
