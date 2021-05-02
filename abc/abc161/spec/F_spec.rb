require 'rspec'

RSpec.describe 'test' do
  it 'test with "6\n"' do
    io = IO.popen("ruby abc161/F.rb", "w+")
    io.puts("6\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "3141\n"' do
    io = IO.popen("ruby abc161/F.rb", "w+")
    io.puts("3141\n")
    io.close_write
    expect(io.readlines.join).to eq("13\n")
  end

  it 'test with "314159265358\n"' do
    io = IO.popen("ruby abc161/F.rb", "w+")
    io.puts("314159265358\n")
    io.close_write
    expect(io.readlines.join).to eq("9\n")
  end

end
