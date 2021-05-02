require 'rspec'

RSpec.describe 'test' do
  it 'test with "3\n3 3 4 4 5\n2 1 1 5 3\n3 1 4 2 5\n"' do
    io = IO.popen("ruby agc045/F.rb", "w+")
    io.puts("3\n3 3 4 4 5\n2 1 1 5 3\n3 1 4 2 5\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n2\n0\n")
  end

end
