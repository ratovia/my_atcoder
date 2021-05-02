require 'rspec'

RSpec.describe 'test' do
  it 'test with "4\n1 3 4 2\n"' do
    io = IO.popen("ruby abc163/E.rb", "w+")
    io.puts("4\n1 3 4 2\n")
    io.close_write
    expect(io.readlines.join).to eq("20\n")
  end

  it 'test with "6\n5 5 6 1 1 1\n"' do
    io = IO.popen("ruby abc163/E.rb", "w+")
    io.puts("6\n5 5 6 1 1 1\n")
    io.close_write
    expect(io.readlines.join).to eq("58\n")
  end

  it 'test with "6\n8 6 9 1 2 1\n"' do
    io = IO.popen("ruby abc163/E.rb", "w+")
    io.puts("6\n8 6 9 1 2 1\n")
    io.close_write
    expect(io.readlines.join).to eq("85\n")
  end

end
