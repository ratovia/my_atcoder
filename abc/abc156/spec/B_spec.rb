require 'rspec'

RSpec.describe 'test' do
  it 'test with "11 2\n"' do
    io = IO.popen("ruby abc156/B.rb", "w+")
    io.puts("11 2\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

  it 'test with "1010101 10\n"' do
    io = IO.popen("ruby abc156/B.rb", "w+")
    io.puts("1010101 10\n")
    io.close_write
    expect(io.readlines.join).to eq("7\n")
  end

  it 'test with "314159265 3\n"' do
    io = IO.popen("ruby abc156/B.rb", "w+")
    io.puts("314159265 3\n")
    io.close_write
    expect(io.readlines.join).to eq("18\n")
  end

end
