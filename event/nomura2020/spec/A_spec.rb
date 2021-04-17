require 'rspec'

RSpec.describe 'test' do
  it 'test with "10 0 15 0 30\n"' do
    io = IO.popen("ruby nomura2020/A.rb", "w+")
    io.puts("10 0 15 0 30\n")
    io.close_write
    expect(io.readlines.join).to eq("270\n")
  end

  it 'test with "10 0 12 0 120\n"' do
    io = IO.popen("ruby nomura2020/A.rb", "w+")
    io.puts("10 0 12 0 120\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

end
