require 'rspec'

RSpec.describe 'test' do
  it 'test with "3 2\n"' do
    io = IO.popen("ruby abc156/E.rb", "w+")
    io.puts("3 2\n")
    io.close_write
    expect(io.readlines.join).to eq("10\n")
  end

  it 'test with "200000 1000000000\n"' do
    io = IO.popen("ruby abc156/E.rb", "w+")
    io.puts("200000 1000000000\n")
    io.close_write
    expect(io.readlines.join).to eq("607923868\n")
  end

  it 'test with "15 6\n"' do
    io = IO.popen("ruby abc156/E.rb", "w+")
    io.puts("15 6\n")
    io.close_write
    expect(io.readlines.join).to eq("22583772\n")
  end

end
