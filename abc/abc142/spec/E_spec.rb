require 'rspec'

RSpec.describe 'test' do
  it 'test with "2 3\n10 1\n1\n15 1\n2\n30 2\n1 2\n"' do
    io = IO.popen("ruby abc142/E.rb", "w+")
    io.puts("2 3\n10 1\n1\n15 1\n2\n30 2\n1 2\n")
    io.close_write
    expect(io.readlines.join).to eq("25\n")
  end

  it 'test with "12 1\n100000 1\n2\n"' do
    io = IO.popen("ruby abc142/E.rb", "w+")
    io.puts("12 1\n100000 1\n2\n")
    io.close_write
    expect(io.readlines.join).to eq("-1\n")
  end

  it 'test with "4 6\n67786 3\n1 3 4\n3497 1\n2\n44908 3\n2 3 4\n2156 3\n2 3 4\n26230 1\n2\n86918 1\n3\n"' do
    io = IO.popen("ruby abc142/E.rb", "w+")
    io.puts("4 6\n67786 3\n1 3 4\n3497 1\n2\n44908 3\n2 3 4\n2156 3\n2 3 4\n26230 1\n2\n86918 1\n3\n")
    io.close_write
    expect(io.readlines.join).to eq("69942\n")
  end

end
