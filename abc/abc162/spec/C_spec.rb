require 'rspec'

RSpec.describe 'test' do
  it 'test with "2\n"' do
    io = IO.popen("ruby abc162/C.rb", "w+")
    io.puts("2\n")
    io.close_write
    expect(io.readlines.join).to eq("9\n")
  end

  it 'test with "200\n"' do
    io = IO.popen("ruby abc162/C.rb", "w+")
    io.puts("200\n")
    io.close_write
    expect(io.readlines.join).to eq("10813692\n")
  end

end
