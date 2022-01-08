require 'rspec'

RSpec.describe 'test' do
  it 'test with "3\n0 10\n5 -5\n-5 -5\n"' do
    io = IO.popen("ruby abc139/F.rb", "w+")
    io.puts("3\n0 10\n5 -5\n-5 -5\n")
    io.close_write
    expect(io.readlines.join).to eq("10.000000000000000000000000000000000000000000000000\n")
  end

  it 'test with "5\n1 1\n1 0\n0 1\n-1 0\n0 -1\n"' do
    io = IO.popen("ruby abc139/F.rb", "w+")
    io.puts("5\n1 1\n1 0\n0 1\n-1 0\n0 -1\n")
    io.close_write
    expect(io.readlines.join).to eq("2.828427124746190097603377448419396157139343750753\n")
  end

  it 'test with "5\n1 1\n2 2\n3 3\n4 4\n5 5\n"' do
    io = IO.popen("ruby abc139/F.rb", "w+")
    io.puts("5\n1 1\n2 2\n3 3\n4 4\n5 5\n")
    io.close_write
    expect(io.readlines.join).to eq("21.213203435596425732025330863145471178545078130654\n")
  end

  it 'test with "3\n0 0\n0 1\n1 0\n"' do
    io = IO.popen("ruby abc139/F.rb", "w+")
    io.puts("3\n0 0\n0 1\n1 0\n")
    io.close_write
    expect(io.readlines.join).to eq("1.414213562373095048801688724209698078569671875376\n")
  end

  it 'test with "1\n90447 91000\n"' do
    io = IO.popen("ruby abc139/F.rb", "w+")
    io.puts("1\n90447 91000\n")
    io.close_write
    expect(io.readlines.join).to eq("128303.000000000000000000000000000000000000000000000000\n")
  end

  it 'test with "2\n96000 -72000\n-72000 54000\n"' do
    io = IO.popen("ruby abc139/F.rb", "w+")
    io.puts("2\n96000 -72000\n-72000 54000\n")
    io.close_write
    expect(io.readlines.join).to eq("120000.000000000000000000000000000000000000000000000000\n")
  end

  it 'test with "10\n1 2\n3 4\n5 6\n7 8\n9 10\n11 12\n13 14\n15 16\n17 18\n19 20\n"' do
    io = IO.popen("ruby abc139/F.rb", "w+")
    io.puts("10\n1 2\n3 4\n5 6\n7 8\n9 10\n11 12\n13 14\n15 16\n17 18\n19 20\n")
    io.close_write
    expect(io.readlines.join).to eq("148.660687473185055226120082139313966514489855137208\n")
  end

end
