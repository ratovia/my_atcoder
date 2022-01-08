require 'rspec'

RSpec.describe 'test' do
  it 'test with "3 2\n"' do
    io = IO.popen("ruby abc163/D.rb", "w+")
    io.puts("3 2\n")
    io.close_write
    expect(io.readlines.join).to eq("10\n")
  end

  it 'test with "200000 200001\n"' do
    io = IO.popen("ruby abc163/D.rb", "w+")
    io.puts("200000 200001\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "141421 35623\n"' do
    io = IO.popen("ruby abc163/D.rb", "w+")
    io.puts("141421 35623\n")
    io.close_write
    expect(io.readlines.join).to eq("220280457\n")
  end

end
