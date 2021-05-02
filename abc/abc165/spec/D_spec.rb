require 'rspec'

RSpec.describe 'test' do
  it 'test with "5 7 4\n"' do
    io = IO.popen("ruby abc165/D.rb", "w+")
    io.puts("5 7 4\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "11 10 9\n"' do
    io = IO.popen("ruby abc165/D.rb", "w+")
    io.puts("11 10 9\n")
    io.close_write
    expect(io.readlines.join).to eq("9\n")
  end

end
