require 'rspec'

RSpec.describe 'test' do
  it 'test with "10\n"' do
    io = IO.popen("ruby abc144/B.rb", "w+")
    io.puts("10\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "50\n"' do
    io = IO.popen("ruby abc144/B.rb", "w+")
    io.puts("50\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

  it 'test with "81\n"' do
    io = IO.popen("ruby abc144/B.rb", "w+")
    io.puts("81\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

end
