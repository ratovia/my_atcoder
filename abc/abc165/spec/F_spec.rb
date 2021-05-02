require 'rspec'

RSpec.describe 'test' do
  it 'test with "10\n1 2 5 3 4 6 7 3 2 4\n1 2\n2 3\n3 4\n4 5\n3 6\n6 7\n1 8\n8 9\n9 10\n"' do
    io = IO.popen("ruby abc165/F.rb", "w+")
    io.puts("10\n1 2 5 3 4 6 7 3 2 4\n1 2\n2 3\n3 4\n4 5\n3 6\n6 7\n1 8\n8 9\n9 10\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n2\n3\n3\n4\n4\n5\n2\n2\n3\n")
  end

end
