require 'rspec'

RSpec.describe 'test' do
  it 'test with "4\n2100 2500 2700 2700\n"' do
    io = IO.popen("ruby abc064/C.rb", "w+")
    io.puts("4\n2100 2500 2700 2700\n")
    io.close_write
    expect(io.readlines.join).to eq("2 2\n")
  end

  it 'test with "5\n1100 1900 2800 3200 3200\n"' do
    io = IO.popen("ruby abc064/C.rb", "w+")
    io.puts("5\n1100 1900 2800 3200 3200\n")
    io.close_write
    expect(io.readlines.join).to eq("3 5\n")
  end

  it 'test with "20\n800 810 820 830 840 850 860 870 880 890 900 910 920 930 940 950 960 970 980 990\n"' do
    io = IO.popen("ruby abc064/C.rb", "w+")
    io.puts("20\n800 810 820 830 840 850 860 870 880 890 900 910 920 930 940 950 960 970 980 990\n")
    io.close_write
    expect(io.readlines.join).to eq("1 1\n")
  end

end
