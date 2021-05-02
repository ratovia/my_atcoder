require 'rspec'

RSpec.describe 'test' do
  it 'test with "1234\n150\n100\n"' do
    io = IO.popen("ruby abc087/A.rb", "w+")
    io.puts("1234\n150\n100\n")
    io.close_write
    expect(io.readlines.join).to eq("84\n")
  end

  it 'test with "1000\n108\n108\n"' do
    io = IO.popen("ruby abc087/A.rb", "w+")
    io.puts("1000\n108\n108\n")
    io.close_write
    expect(io.readlines.join).to eq("28\n")
  end

  it 'test with "579\n123\n456\n"' do
    io = IO.popen("ruby abc087/A.rb", "w+")
    io.puts("579\n123\n456\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "7477\n549\n593\n"' do
    io = IO.popen("ruby abc087/A.rb", "w+")
    io.puts("7477\n549\n593\n")
    io.close_write
    expect(io.readlines.join).to eq("405\n")
  end

end
