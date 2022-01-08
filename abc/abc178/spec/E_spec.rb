require 'rspec'

RSpec.describe 'test' do
  it 'test with "3\n1 1\n2 4\n3 2\n"' do
    io = IO.popen("ruby abc178/E.rb", "w+")
    io.puts("3\n1 1\n2 4\n3 2\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

  it 'test with "2\n1 1\n1 1\n"' do
    io = IO.popen("ruby abc178/E.rb", "w+")
    io.puts("2\n1 1\n1 1\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

end
