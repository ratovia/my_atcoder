require 'rspec'

RSpec.describe 'test' do
  it 'test with "15\n"' do
    io = IO.popen("ruby abc161/D.rb", "w+")
    io.puts("15\n")
    io.close_write
    expect(io.readlines.join).to eq("23\n")
  end

  it 'test with "1\n"' do
    io = IO.popen("ruby abc161/D.rb", "w+")
    io.puts("1\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "13\n"' do
    io = IO.popen("ruby abc161/D.rb", "w+")
    io.puts("13\n")
    io.close_write
    expect(io.readlines.join).to eq("21\n")
  end

  it 'test with "100000\n"' do
    io = IO.popen("ruby abc161/D.rb", "w+")
    io.puts("100000\n")
    io.close_write
    expect(io.readlines.join).to eq("3234566667\n")
  end

end
