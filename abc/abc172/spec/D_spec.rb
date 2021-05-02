require 'rspec'

RSpec.describe 'test' do
  it 'test with "4\n"' do
    io = IO.popen("ruby abc172/D.rb", "w+")
    io.puts("4\n")
    io.close_write
    expect(io.readlines.join).to eq("23\n")
  end

  it 'test with "100\n"' do
    io = IO.popen("ruby abc172/D.rb", "w+")
    io.puts("100\n")
    io.close_write
    expect(io.readlines.join).to eq("26879\n")
  end

  it 'test with "10000000\n"' do
    io = IO.popen("ruby abc172/D.rb", "w+")
    io.puts("10000000\n")
    io.close_write
    expect(io.readlines.join).to eq("838627288460105\n")
  end

end
