require 'rspec'

RSpec.describe 'test' do
  it 'test with "1\n"' do
    io = IO.popen("ruby abc178/A.rb", "w+")
    io.puts("1\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "0\n"' do
    io = IO.popen("ruby abc178/A.rb", "w+")
    io.puts("0\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

end
