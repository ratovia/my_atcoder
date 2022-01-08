require 'rspec'

RSpec.describe 'test' do
  it 'test with "5 7 5\n"' do
    io = IO.popen("ruby abc155/A.rb", "w+")
    io.puts("5 7 5\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "4 4 4\n"' do
    io = IO.popen("ruby abc155/A.rb", "w+")
    io.puts("4 4 4\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

  it 'test with "4 9 6\n"' do
    io = IO.popen("ruby abc155/A.rb", "w+")
    io.puts("4 9 6\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

  it 'test with "3 3 4\n"' do
    io = IO.popen("ruby abc155/A.rb", "w+")
    io.puts("3 3 4\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

end
