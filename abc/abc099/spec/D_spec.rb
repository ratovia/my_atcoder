require 'rspec'

RSpec.describe 'test' do
  it 'test with "2 3\n0 1 1\n1 0 1\n1 4 0\n1 2\n3 3\n"' do
    io = IO.popen("ruby abc099/D.rb", "w+")
    io.puts("2 3\n0 1 1\n1 0 1\n1 4 0\n1 2\n3 3\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "4 3\n0 12 71\n81 0 53\n14 92 0\n1 1 2 1\n2 1 1 2\n2 2 1 3\n1 1 2 2\n"' do
    io = IO.popen("ruby abc099/D.rb", "w+")
    io.puts("4 3\n0 12 71\n81 0 53\n14 92 0\n1 1 2 1\n2 1 1 2\n2 2 1 3\n1 1 2 2\n")
    io.close_write
    expect(io.readlines.join).to eq("428\n")
  end

end
