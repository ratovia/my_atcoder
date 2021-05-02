require 'rspec'

RSpec.describe 'test' do
  it 'test with "oxo\n"' do
    io = IO.popen("ruby abc095/A.rb", "w+")
    io.puts("oxo\n")
    io.close_write
    expect(io.readlines.join).to eq("900\n")
  end

  it 'test with "ooo\n"' do
    io = IO.popen("ruby abc095/A.rb", "w+")
    io.puts("ooo\n")
    io.close_write
    expect(io.readlines.join).to eq("1000\n")
  end

  it 'test with "xxx\n"' do
    io = IO.popen("ruby abc095/A.rb", "w+")
    io.puts("xxx\n")
    io.close_write
    expect(io.readlines.join).to eq("700\n")
  end

end
