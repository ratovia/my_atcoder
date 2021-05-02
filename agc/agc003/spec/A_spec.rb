require 'rspec'

RSpec.describe 'test' do
  it 'test with "SENW\n"' do
    io = IO.popen("ruby agc003/A.rb", "w+")
    io.puts("SENW\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "NSNNSNSN\n"' do
    io = IO.popen("ruby agc003/A.rb", "w+")
    io.puts("NSNNSNSN\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "NNEW\n"' do
    io = IO.popen("ruby agc003/A.rb", "w+")
    io.puts("NNEW\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

  it 'test with "W\n"' do
    io = IO.popen("ruby agc003/A.rb", "w+")
    io.puts("W\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

end
