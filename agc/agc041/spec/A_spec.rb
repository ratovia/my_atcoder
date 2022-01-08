require 'rspec'

RSpec.describe 'test' do
  it 'test with "5 2 4\n"' do
    io = IO.popen("ruby agc041/A.rb", "w+")
    io.puts("5 2 4\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "5 2 3\n"' do
    io = IO.popen("ruby agc041/A.rb", "w+")
    io.puts("5 2 3\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

end
