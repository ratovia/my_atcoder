require 'rspec'

RSpec.describe 'test' do
  it 'test with "103\n"' do
    io = IO.popen("ruby abc165/B.rb", "w+")
    io.puts("103\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "1000000000000000000\n"' do
    io = IO.popen("ruby abc165/B.rb", "w+")
    io.puts("1000000000000000000\n")
    io.close_write
    expect(io.readlines.join).to eq("3760\n")
  end

  it 'test with "1333333333\n"' do
    io = IO.popen("ruby abc165/B.rb", "w+")
    io.puts("1333333333\n")
    io.close_write
    expect(io.readlines.join).to eq("1706\n")
  end

end
