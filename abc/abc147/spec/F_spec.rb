require 'rspec'

RSpec.describe 'test' do
  it 'test with "3 4 2\n"' do
    io = IO.popen("ruby abc147/F.rb", "w+")
    io.puts("3 4 2\n")
    io.close_write
    expect(io.readlines.join).to eq("8\n")
  end

  it 'test with "2 3 -3\n"' do
    io = IO.popen("ruby abc147/F.rb", "w+")
    io.puts("2 3 -3\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "100 14 20\n"' do
    io = IO.popen("ruby abc147/F.rb", "w+")
    io.puts("100 14 20\n")
    io.close_write
    expect(io.readlines.join).to eq("49805\n")
  end

end
