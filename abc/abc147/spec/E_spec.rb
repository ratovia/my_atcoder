require 'rspec'

RSpec.describe 'test' do
  it 'test with "2 2\n1 2\n3 4\n3 4\n2 1\n"' do
    io = IO.popen("ruby abc147/E.rb", "w+")
    io.puts("2 2\n1 2\n3 4\n3 4\n2 1\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "2 3\n1 10 80\n80 10 1\n1 2 3\n4 5 6\n"' do
    io = IO.popen("ruby abc147/E.rb", "w+")
    io.puts("2 3\n1 10 80\n80 10 1\n1 2 3\n4 5 6\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

end
