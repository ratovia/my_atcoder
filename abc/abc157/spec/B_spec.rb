require 'rspec'

RSpec.describe 'test' do
  it 'test with "84 97 66\n79 89 11\n61 59 7\n7\n89\n7\n87\n79\n24\n84\n30\n"' do
    io = IO.popen("ruby abc157/B.rb", "w+")
    io.puts("84 97 66\n79 89 11\n61 59 7\n7\n89\n7\n87\n79\n24\n84\n30\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "41 7 46\n26 89 2\n78 92 8\n5\n6\n45\n16\n57\n17\n"' do
    io = IO.popen("ruby abc157/B.rb", "w+")
    io.puts("41 7 46\n26 89 2\n78 92 8\n5\n6\n45\n16\n57\n17\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

  it 'test with "60 88 34\n92 41 43\n65 73 48\n10\n60\n43\n88\n11\n48\n73\n65\n41\n92\n34\n"' do
    io = IO.popen("ruby abc157/B.rb", "w+")
    io.puts("60 88 34\n92 41 43\n65 73 48\n10\n60\n43\n88\n11\n48\n73\n65\n41\n92\n34\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

end
