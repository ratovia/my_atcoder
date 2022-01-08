require 'rspec'

RSpec.describe 'test' do
  it 'test with "33\n"' do
    io = IO.popen("ruby abc166/D.rb", "w+")
    io.puts("33\n")
    io.close_write
    expect(io.readlines.join).to eq("2 -1\n")
  end

  it 'test with "1\n"' do
    io = IO.popen("ruby abc166/D.rb", "w+")
    io.puts("1\n")
    io.close_write
    expect(io.readlines.join).to eq("0 -1\n")
  end

end
