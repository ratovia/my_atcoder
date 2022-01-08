require 'rspec'

RSpec.describe 'test' do
  it 'test with "3 1\n"' do
    io = IO.popen("ruby agc045/D.rb", "w+")
    io.puts("3 1\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "3 2\n"' do
    io = IO.popen("ruby agc045/D.rb", "w+")
    io.puts("3 2\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "8 4\n"' do
    io = IO.popen("ruby agc045/D.rb", "w+")
    io.puts("8 4\n")
    io.close_write
    expect(io.readlines.join).to eq("16776\n")
  end

  it 'test with "9999999 4999\n"' do
    io = IO.popen("ruby agc045/D.rb", "w+")
    io.puts("9999999 4999\n")
    io.close_write
    expect(io.readlines.join).to eq("90395416\n")
  end

end
