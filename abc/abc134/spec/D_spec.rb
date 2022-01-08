require 'rspec'

RSpec.describe 'test' do
  it 'test with "3\n1 0 0\n"' do
    io = IO.popen("ruby abc134/D.rb", "w+")
    io.puts("3\n1 0 0\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n1\n")
  end

  it 'test with "5\n0 0 0 0 0\n"' do
    io = IO.popen("ruby abc134/D.rb", "w+")
    io.puts("5\n0 0 0 0 0\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

end
