require 'rspec'

RSpec.describe 'test' do
  it 'test with "1000 15 80\n"' do
    io = IO.popen("ruby abc177/A.rb", "w+")
    io.puts("1000 15 80\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "2000 20 100\n"' do
    io = IO.popen("ruby abc177/A.rb", "w+")
    io.puts("2000 20 100\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "10000 1 1\n"' do
    io = IO.popen("ruby abc177/A.rb", "w+")
    io.puts("10000 1 1\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

end
