require 'rspec'

RSpec.describe 'test' do
  it 'test with "2\n1 2 1 2 2 1\n"' do
    io = IO.popen("ruby abc176/F.rb", "w+")
    io.puts("2\n1 2 1 2 2 1\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "3\n1 1 2 2 3 3 3 2 1\n"' do
    io = IO.popen("ruby abc176/F.rb", "w+")
    io.puts("3\n1 1 2 2 3 3 3 2 1\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "3\n1 1 2 2 2 3 3 3 1\n"' do
    io = IO.popen("ruby abc176/F.rb", "w+")
    io.puts("3\n1 1 2 2 2 3 3 3 1\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

end
