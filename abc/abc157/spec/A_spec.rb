require 'rspec'

RSpec.describe 'test' do
  it 'test with "5\n"' do
    io = IO.popen("ruby abc157/A.rb", "w+")
    io.puts("5\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "2\n"' do
    io = IO.popen("ruby abc157/A.rb", "w+")
    io.puts("2\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "100\n"' do
    io = IO.popen("ruby abc157/A.rb", "w+")
    io.puts("100\n")
    io.close_write
    expect(io.readlines.join).to eq("50\n")
  end

end
