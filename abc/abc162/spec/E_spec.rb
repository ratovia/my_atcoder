require 'rspec'

RSpec.describe 'test' do
  it 'test with "3 2\n"' do
    io = IO.popen("ruby abc162/E.rb", "w+")
    io.puts("3 2\n")
    io.close_write
    expect(io.readlines.join).to eq("9\n")
  end

  it 'test with "3 200\n"' do
    io = IO.popen("ruby abc162/E.rb", "w+")
    io.puts("3 200\n")
    io.close_write
    expect(io.readlines.join).to eq("10813692\n")
  end

  it 'test with "100000 100000\n"' do
    io = IO.popen("ruby abc162/E.rb", "w+")
    io.puts("100000 100000\n")
    io.close_write
    expect(io.readlines.join).to eq("742202979\n")
  end

end
