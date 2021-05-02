require 'rspec'

RSpec.describe 'test' do
  it 'test with "7\nabcdbbd\n6\n2 3 6\n1 5 z\n2 1 1\n1 4 a\n1 7 d\n2 1 7\n"' do
    io = IO.popen("ruby abc157/E.rb", "w+")
    io.puts("7\nabcdbbd\n6\n2 3 6\n1 5 z\n2 1 1\n1 4 a\n1 7 d\n2 1 7\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n1\n5\n")
  end

end
