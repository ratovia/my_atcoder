require 'rspec'

RSpec.describe 'test' do
  it 'test with "issii\n2\n"' do
    io = IO.popen("ruby agc039/A.rb", "w+")
    io.puts("issii\n2\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

  it 'test with "qq\n81\n"' do
    io = IO.popen("ruby agc039/A.rb", "w+")
    io.puts("qq\n81\n")
    io.close_write
    expect(io.readlines.join).to eq("81\n")
  end

  it 'test with "cooooooooonteeeeeeeeeest\n999993333\n"' do
    io = IO.popen("ruby agc039/A.rb", "w+")
    io.puts("cooooooooonteeeeeeeeeest\n999993333\n")
    io.close_write
    expect(io.readlines.join).to eq("8999939997\n")
  end

end
