require 'rspec'

RSpec.describe 'test' do
  it 'test with "5\n2\n1\n4\n5\n3\n"' do
    io = IO.popen("ruby abc134/E.rb", "w+")
    io.puts("5\n2\n1\n4\n5\n3\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "4\n0\n0\n0\n0\n"' do
    io = IO.popen("ruby abc134/E.rb", "w+")
    io.puts("4\n0\n0\n0\n0\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

end
