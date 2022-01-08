require 'rspec'

RSpec.describe 'test' do
  it 'test with "4\nWWRR\n"' do
    io = IO.popen("ruby abc174/D.rb", "w+")
    io.puts("4\nWWRR\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "2\nRR\n"' do
    io = IO.popen("ruby abc174/D.rb", "w+")
    io.puts("2\nRR\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "8\nWRWWRWRR\n"' do
    io = IO.popen("ruby abc174/D.rb", "w+")
    io.puts("8\nWRWWRWRR\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

end
