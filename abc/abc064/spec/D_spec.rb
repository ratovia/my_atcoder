require 'rspec'

RSpec.describe 'test' do
  it 'test with "3\n())\n"' do
    io = IO.popen("ruby abc064/D.rb", "w+")
    io.puts("3\n())\n")
    io.close_write
    expect(io.readlines.join).to eq("(())\n")
  end

  it 'test with "6\n)))())\n"' do
    io = IO.popen("ruby abc064/D.rb", "w+")
    io.puts("6\n)))())\n")
    io.close_write
    expect(io.readlines.join).to eq("(((()))())\n")
  end

  it 'test with "8\n))))((((\n"' do
    io = IO.popen("ruby abc064/D.rb", "w+")
    io.puts("8\n))))((((\n")
    io.close_write
    expect(io.readlines.join).to eq("(((())))(((())))\n")
  end

end
