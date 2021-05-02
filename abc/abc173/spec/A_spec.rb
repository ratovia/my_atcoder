require 'rspec'

RSpec.describe 'test' do
  it 'test with "1900\n"' do
    io = IO.popen("ruby abc173/A.rb", "w+")
    io.puts("1900\n")
    io.close_write
    expect(io.readlines.join).to eq("100\n")
  end

  it 'test with "3000\n"' do
    io = IO.popen("ruby abc173/A.rb", "w+")
    io.puts("3000\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

end
