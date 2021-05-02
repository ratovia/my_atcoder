require 'rspec'

RSpec.describe 'test' do
  it 'test with "2\n1 2\n2 3\n"' do
    io = IO.popen("ruby abc169/E.rb", "w+")
    io.puts("2\n1 2\n2 3\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "3\n100 100\n10 10000\n1 1000000000\n"' do
    io = IO.popen("ruby abc169/E.rb", "w+")
    io.puts("3\n100 100\n10 10000\n1 1000000000\n")
    io.close_write
    expect(io.readlines.join).to eq("9991\n")
  end

end
