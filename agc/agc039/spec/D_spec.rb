require 'rspec'

RSpec.describe 'test' do
  it 'test with "3 4\n0\n1\n3\n"' do
    io = IO.popen("ruby agc039/D.rb", "w+")
    io.puts("3 4\n0\n1\n3\n")
    io.close_write
    expect(io.readlines.join).to eq("0.414213562373095 -0.000000000000000\n")
  end

  it 'test with "4 8\n1\n3\n5\n6\n"' do
    io = IO.popen("ruby agc039/D.rb", "w+")
    io.puts("4 8\n1\n3\n5\n6\n")
    io.close_write
    expect(io.readlines.join).to eq("-0.229401949926902 -0.153281482438188\n")
  end

  it 'test with "10 100\n2\n11\n35\n42\n54\n69\n89\n91\n93\n99\n"' do
    io = IO.popen("ruby agc039/D.rb", "w+")
    io.puts("10 100\n2\n11\n35\n42\n54\n69\n89\n91\n93\n99\n")
    io.close_write
    expect(io.readlines.join).to eq("0.352886583546338 -0.109065017701873\n")
  end

end
