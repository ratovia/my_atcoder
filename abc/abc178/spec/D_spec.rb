require 'rspec'

RSpec.describe 'test' do
  it 'test with "7\n"' do
    io = IO.popen("ruby abc178/D.rb", "w+")
    io.puts("7\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "2\n"' do
    io = IO.popen("ruby abc178/D.rb", "w+")
    io.puts("2\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "1729\n"' do
    io = IO.popen("ruby abc178/D.rb", "w+")
    io.puts("1729\n")
    io.close_write
    expect(io.readlines.join).to eq("294867501\n")
  end

end
