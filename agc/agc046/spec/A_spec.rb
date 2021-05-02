require 'rspec'

RSpec.describe 'test' do
  it 'test with "90\n"' do
    io = IO.popen("ruby agc046/A.rb", "w+")
    io.puts("90\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

  it 'test with "1\n"' do
    io = IO.popen("ruby agc046/A.rb", "w+")
    io.puts("1\n")
    io.close_write
    expect(io.readlines.join).to eq("360\n")
  end

end
