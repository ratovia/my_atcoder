require 'rspec'

RSpec.describe 'test' do
  it 'test with "5 7 5\n"' do
    io = IO.popen("ruby abc075/A.rb", "w+")
    io.puts("5 7 5\n")
    io.close_write
    expect(io.readlines.join).to eq("7\n")
  end

  it 'test with "1 1 7\n"' do
    io = IO.popen("ruby abc075/A.rb", "w+")
    io.puts("1 1 7\n")
    io.close_write
    expect(io.readlines.join).to eq("7\n")
  end

  it 'test with "-100 100 100\n"' do
    io = IO.popen("ruby abc075/A.rb", "w+")
    io.puts("-100 100 100\n")
    io.close_write
    expect(io.readlines.join).to eq("-100\n")
  end

end
