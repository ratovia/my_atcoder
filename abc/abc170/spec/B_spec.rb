require 'rspec'

RSpec.describe 'test' do
  it 'test with "3 8\n"' do
    io = IO.popen("ruby abc170/B.rb", "w+")
    io.puts("3 8\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "2 100\n"' do
    io = IO.popen("ruby abc170/B.rb", "w+")
    io.puts("2 100\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

  it 'test with "1 2\n"' do
    io = IO.popen("ruby abc170/B.rb", "w+")
    io.puts("1 2\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

end
