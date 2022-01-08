require 'rspec'

RSpec.describe 'test' do
  it 'test with "5 10 2\n"' do
    io = IO.popen("ruby aising2020/A.rb", "w+")
    io.puts("5 10 2\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "6 20 7\n"' do
    io = IO.popen("ruby aising2020/A.rb", "w+")
    io.puts("6 20 7\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "1 100 1\n"' do
    io = IO.popen("ruby aising2020/A.rb", "w+")
    io.puts("1 100 1\n")
    io.close_write
    expect(io.readlines.join).to eq("100\n")
  end

end
