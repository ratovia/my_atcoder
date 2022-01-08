require 'rspec'

RSpec.describe 'test' do
  it 'test with "2\n"' do
    io = IO.popen("ruby abc171/C.rb", "w+")
    io.puts("2\n")
    io.close_write
    expect(io.readlines.join).to eq("b\n")
  end

  it 'test with "27\n"' do
    io = IO.popen("ruby abc171/C.rb", "w+")
    io.puts("27\n")
    io.close_write
    expect(io.readlines.join).to eq("aa\n")
  end

  it 'test with "123456789\n"' do
    io = IO.popen("ruby abc171/C.rb", "w+")
    io.puts("123456789\n")
    io.close_write
    expect(io.readlines.join).to eq("jjddja\n")
  end

end
