require 'rspec'

RSpec.describe 'test' do
  it 'test with "3 4 3\n1 3 3 100\n1 2 2 10\n2 3 2 10\n"' do
    io = IO.popen("ruby abc165/C.rb", "w+")
    io.puts("3 4 3\n1 3 3 100\n1 2 2 10\n2 3 2 10\n")
    io.close_write
    expect(io.readlines.join).to eq("110\n")
  end

  it 'test with "4 6 10\n2 4 1 86568\n1 4 0 90629\n2 3 0 90310\n3 4 1 29211\n3 4 3 78537\n3 4 2 8580\n1 2 1 96263\n1 4 2 2156\n1 2 0 94325\n1 4 3 94328\n"' do
    io = IO.popen("ruby abc165/C.rb", "w+")
    io.puts("4 6 10\n2 4 1 86568\n1 4 0 90629\n2 3 0 90310\n3 4 1 29211\n3 4 3 78537\n3 4 2 8580\n1 2 1 96263\n1 4 2 2156\n1 2 0 94325\n1 4 3 94328\n")
    io.close_write
    expect(io.readlines.join).to eq("357500\n")
  end

  it 'test with "10 10 1\n1 10 9 1\n"' do
    io = IO.popen("ruby abc165/C.rb", "w+")
    io.puts("10 10 1\n1 10 9 1\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

end
