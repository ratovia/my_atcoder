require 'rspec'

RSpec.describe 'test' do
  it 'test with "akasaka\n"' do
    io = IO.popen("ruby abc159/B.rb", "w+")
    io.puts("akasaka\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "level\n"' do
    io = IO.popen("ruby abc159/B.rb", "w+")
    io.puts("level\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

  it 'test with "atcoder\n"' do
    io = IO.popen("ruby abc159/B.rb", "w+")
    io.puts("atcoder\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

end
