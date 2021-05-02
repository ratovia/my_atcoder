require 'rspec'

RSpec.describe 'test' do
  it 'test with "5\n2 1 5 4 3\n"' do
    io = IO.popen("ruby abc176/C.rb", "w+")
    io.puts("5\n2 1 5 4 3\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

  it 'test with "5\n3 3 3 3 3\n"' do
    io = IO.popen("ruby abc176/C.rb", "w+")
    io.puts("5\n3 3 3 3 3\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

end
