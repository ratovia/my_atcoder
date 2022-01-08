require 'rspec'

RSpec.describe 'test' do
  it 'test with "6\n"' do
    io = IO.popen("ruby agc041/C.rb", "w+")
    io.puts("6\n")
    io.close_write
    expect(io.readlines.join).to eq("aabb..\nb..zz.\nba....\n.a..aa\n..a..b\n..a..b\n")
  end

  it 'test with "2\n"' do
    io = IO.popen("ruby agc041/C.rb", "w+")
    io.puts("2\n")
    io.close_write
    expect(io.readlines.join).to eq("-1\n")
  end

end
