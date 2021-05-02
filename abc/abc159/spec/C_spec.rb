require 'rspec'

RSpec.describe 'test' do
  it 'test with "3\n"' do
    io = IO.popen("ruby abc159/C.rb", "w+")
    io.puts("3\n")
    io.close_write
    expect(io.readlines.join).to eq("1.000000000000\n")
  end

  it 'test with "999\n"' do
    io = IO.popen("ruby abc159/C.rb", "w+")
    io.puts("999\n")
    io.close_write
    expect(io.readlines.join).to eq("36926037.000000000000\n")
  end

end
