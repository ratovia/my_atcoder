require 'rspec'

RSpec.describe 'test' do
  it 'test with "2\n"' do
    io = IO.popen("ruby abc139/D.rb", "w+")
    io.puts("2\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "13\n"' do
    io = IO.popen("ruby abc139/D.rb", "w+")
    io.puts("13\n")
    io.close_write
    expect(io.readlines.join).to eq("78\n")
  end

  it 'test with "1\n"' do
    io = IO.popen("ruby abc139/D.rb", "w+")
    io.puts("1\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

end
