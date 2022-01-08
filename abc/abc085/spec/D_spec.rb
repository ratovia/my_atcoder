require 'rspec'

RSpec.describe 'test' do
  it 'test with "1 10\n3 5\n"' do
    io = IO.popen("ruby abc085/D.rb", "w+")
    io.puts("1 10\n3 5\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "2 10\n3 5\n2 6\n"' do
    io = IO.popen("ruby abc085/D.rb", "w+")
    io.puts("2 10\n3 5\n2 6\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "4 1000000000\n1 1\n1 10000000\n1 30000000\n1 99999999\n"' do
    io = IO.popen("ruby abc085/D.rb", "w+")
    io.puts("4 1000000000\n1 1\n1 10000000\n1 30000000\n1 99999999\n")
    io.close_write
    expect(io.readlines.join).to eq("860000004\n")
  end

  it 'test with "5 500\n35 44\n28 83\n46 62\n31 79\n40 43\n"' do
    io = IO.popen("ruby abc085/D.rb", "w+")
    io.puts("5 500\n35 44\n28 83\n46 62\n31 79\n40 43\n")
    io.close_write
    expect(io.readlines.join).to eq("9\n")
  end

end
