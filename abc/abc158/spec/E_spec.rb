require 'rspec'

RSpec.describe 'test' do
  it 'test with "4 3\n3543\n"' do
    io = IO.popen("ruby abc158/E.rb", "w+")
    io.puts("4 3\n3543\n")
    io.close_write
    expect(io.readlines.join).to eq("6\n")
  end

  it 'test with "4 2\n2020\n"' do
    io = IO.popen("ruby abc158/E.rb", "w+")
    io.puts("4 2\n2020\n")
    io.close_write
    expect(io.readlines.join).to eq("10\n")
  end

  it 'test with "20 11\n33883322005544116655\n"' do
    io = IO.popen("ruby abc158/E.rb", "w+")
    io.puts("20 11\n33883322005544116655\n")
    io.close_write
    expect(io.readlines.join).to eq("68\n")
  end

end
