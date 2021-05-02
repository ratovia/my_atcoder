require 'rspec'

RSpec.describe 'test' do
  it 'test with "4\n2 3 7 9\n"' do
    io = IO.popen("ruby abc064/B.rb", "w+")
    io.puts("4\n2 3 7 9\n")
    io.close_write
    expect(io.readlines.join).to eq("7\n")
  end

  it 'test with "8\n3 1 4 1 5 9 2 6\n"' do
    io = IO.popen("ruby abc064/B.rb", "w+")
    io.puts("8\n3 1 4 1 5 9 2 6\n")
    io.close_write
    expect(io.readlines.join).to eq("8\n")
  end

end
