require 'rspec'

RSpec.describe 'test' do
  it 'test with "3 3\n1 2 3\n"' do
    io = IO.popen("ruby arc106/D.rb", "w+")
    io.puts("3 3\n1 2 3\n")
    io.close_write
    expect(io.readlines.join).to eq("12\n50\n216\n")
  end

  it 'test with "10 10\n1 1 1 1 1 1 1 1 1 1\n"' do
    io = IO.popen("ruby arc106/D.rb", "w+")
    io.puts("10 10\n1 1 1 1 1 1 1 1 1 1\n")
    io.close_write
    expect(io.readlines.join).to eq("90\n180\n360\n720\n1440\n2880\n5760\n11520\n23040\n46080\n")
  end

  it 'test with "2 5\n1234 5678\n"' do
    io = IO.popen("ruby arc106/D.rb", "w+")
    io.puts("2 5\n1234 5678\n")
    io.close_write
    expect(io.readlines.join).to eq("6912\n47775744\n805306038\n64822328\n838460992\n")
  end

end
