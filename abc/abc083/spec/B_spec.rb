require 'rspec'

RSpec.describe 'test' do
  it 'test with "20 2 5\n"' do
    io = IO.popen("ruby abc083/B.rb", "w+")
    io.puts("20 2 5\n")
    io.close_write
    expect(io.readlines.join).to eq("84\n")
  end

  it 'test with "10 1 2\n"' do
    io = IO.popen("ruby abc083/B.rb", "w+")
    io.puts("10 1 2\n")
    io.close_write
    expect(io.readlines.join).to eq("13\n")
  end

  it 'test with "100 4 16\n"' do
    io = IO.popen("ruby abc083/B.rb", "w+")
    io.puts("100 4 16\n")
    io.close_write
    expect(io.readlines.join).to eq("4554\n")
  end

end
