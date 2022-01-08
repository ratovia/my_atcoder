require 'rspec'

RSpec.describe 'test' do
  it 'test with "2017/01/07\n"' do
    io = IO.popen("ruby abc085/A.rb", "w+")
    io.puts("2017/01/07\n")
    io.close_write
    expect(io.readlines.join).to eq("2018/01/07\n")
  end

  it 'test with "2017/01/31\n"' do
    io = IO.popen("ruby abc085/A.rb", "w+")
    io.puts("2017/01/31\n")
    io.close_write
    expect(io.readlines.join).to eq("2018/01/31\n")
  end

end
