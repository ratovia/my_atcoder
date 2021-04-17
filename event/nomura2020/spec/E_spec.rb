require 'rspec'

RSpec.describe 'test' do
  it 'test with "1101\n"' do
    io = IO.popen("ruby nomura2020/E.rb", "w+")
    io.puts("1101\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n")
  end

  it 'test with "0111101101\n"' do
    io = IO.popen("ruby nomura2020/E.rb", "w+")
    io.puts("0111101101\n")
    io.close_write
    expect(io.readlines.join).to eq("26\n")
  end

end
