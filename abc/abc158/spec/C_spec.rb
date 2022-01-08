require 'rspec'

RSpec.describe 'test' do
  it 'test with "2 2\n"' do
    io = IO.popen("ruby abc158/C.rb", "w+")
    io.puts("2 2\n")
    io.close_write
    expect(io.readlines.join).to eq("25\n")
  end

  it 'test with "8 10\n"' do
    io = IO.popen("ruby abc158/C.rb", "w+")
    io.puts("8 10\n")
    io.close_write
    expect(io.readlines.join).to eq("100\n")
  end

  it 'test with "19 99\n"' do
    io = IO.popen("ruby abc158/C.rb", "w+")
    io.puts("19 99\n")
    io.close_write
    expect(io.readlines.join).to eq("-1\n")
  end

end
