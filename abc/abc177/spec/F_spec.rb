require 'rspec'

RSpec.describe 'test' do
  it 'test with "4 4\n2 4\n1 1\n2 3\n2 4\n"' do
    io = IO.popen("ruby abc177/F.rb", "w+")
    io.puts("4 4\n2 4\n1 1\n2 3\n2 4\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n3\n6\n-1\n")
  end

end
