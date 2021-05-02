require 'rspec'

RSpec.describe 'test' do
  it 'test with "1 21\n"' do
    io = IO.popen("ruby abc086/B.rb", "w+")
    io.puts("1 21\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "100 100\n"' do
    io = IO.popen("ruby abc086/B.rb", "w+")
    io.puts("100 100\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

  it 'test with "12 10\n"' do
    io = IO.popen("ruby abc086/B.rb", "w+")
    io.puts("12 10\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

end
