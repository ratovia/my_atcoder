require 'rspec'

RSpec.describe 'test' do
  it 'test with "4 1\n"' do
    io = IO.popen("ruby abc165/E.rb", "w+")
    io.puts("4 1\n")
    io.close_write
    expect(io.readlines.join).to eq("2 3\n")
  end

  it 'test with "7 3\n"' do
    io = IO.popen("ruby abc165/E.rb", "w+")
    io.puts("7 3\n")
    io.close_write
    expect(io.readlines.join).to eq("1 6\n2 5\n3 4\n")
  end

end
