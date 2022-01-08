require 'rspec'

RSpec.describe 'test' do
  it 'test with "4\n1 2 3 4\n3\n1 2\n3 4\n2 4\n"' do
    io = IO.popen("ruby abc171/D.rb", "w+")
    io.puts("4\n1 2 3 4\n3\n1 2\n3 4\n2 4\n")
    io.close_write
    expect(io.readlines.join).to eq("11\n12\n16\n")
  end

  it 'test with "4\n1 1 1 1\n3\n1 2\n2 1\n3 5\n"' do
    io = IO.popen("ruby abc171/D.rb", "w+")
    io.puts("4\n1 1 1 1\n3\n1 2\n2 1\n3 5\n")
    io.close_write
    expect(io.readlines.join).to eq("8\n4\n4\n")
  end

  it 'test with "2\n1 2\n3\n1 100\n2 100\n100 1000\n"' do
    io = IO.popen("ruby abc171/D.rb", "w+")
    io.puts("2\n1 2\n3\n1 100\n2 100\n100 1000\n")
    io.close_write
    expect(io.readlines.join).to eq("102\n200\n2000\n")
  end

end
