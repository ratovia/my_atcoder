require 'rspec'

RSpec.describe 'test' do
  it 'test with "2\n)\n(()\n"' do
    io = IO.popen("ruby abc167/F.rb", "w+")
    io.puts("2\n)\n(()\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "2\n)(\n()\n"' do
    io = IO.popen("ruby abc167/F.rb", "w+")
    io.puts("2\n)(\n()\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

  it 'test with "4\n((()))\n((((((\n))))))\n()()()\n"' do
    io = IO.popen("ruby abc167/F.rb", "w+")
    io.puts("4\n((()))\n((((((\n))))))\n()()()\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "3\n(((\n)\n)\n"' do
    io = IO.popen("ruby abc167/F.rb", "w+")
    io.puts("3\n(((\n)\n)\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

end
