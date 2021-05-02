require 'rspec'

RSpec.describe 'test' do
  it 'test with "? T\n"' do
    io = IO.popen("ruby agc044/D.rb", "w+")
    io.puts("? T\n")
    io.close_write
    expect(io.readlines.join).to eq("ans\n")
  end

  it 'test with "! S\n"' do
    io = IO.popen("ruby agc044/D.rb", "w+")
    io.puts("! S\n")
    io.close_write
    expect(io.readlines.join).to eq()
  end

end
