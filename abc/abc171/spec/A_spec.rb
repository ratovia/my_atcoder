require 'rspec'

RSpec.describe 'test' do
  it 'test with "B\n"' do
    io = IO.popen("ruby abc171/A.rb", "w+")
    io.puts("B\n")
    io.close_write
    expect(io.readlines.join).to eq("A\n")
  end

  it 'test with "a\n"' do
    io = IO.popen("ruby abc171/A.rb", "w+")
    io.puts("a\n")
    io.close_write
    expect(io.readlines.join).to eq("a\n")
  end

end
