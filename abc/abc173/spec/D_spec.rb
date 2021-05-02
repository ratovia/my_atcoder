require 'rspec'

RSpec.describe 'test' do
  it 'test with "4\n2 2 1 3\n"' do
    io = IO.popen("ruby abc173/D.rb", "w+")
    io.puts("4\n2 2 1 3\n")
    io.close_write
    expect(io.readlines.join).to eq("7\n")
  end

  it 'test with "7\n1 1 1 1 1 1 1\n"' do
    io = IO.popen("ruby abc173/D.rb", "w+")
    io.puts("7\n1 1 1 1 1 1 1\n")
    io.close_write
    expect(io.readlines.join).to eq("6\n")
  end

end
