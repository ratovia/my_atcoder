require 'rspec'

RSpec.describe 'test' do
  it 'test with "10 9 10 10\n"' do
    io = IO.popen("ruby abc164/B.rb", "w+")
    io.puts("10 9 10 10\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

  it 'test with "46 4 40 5\n"' do
    io = IO.popen("ruby abc164/B.rb", "w+")
    io.puts("46 4 40 5\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

end
