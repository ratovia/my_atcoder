require 'rspec'

RSpec.describe 'test' do
  it 'test with "6 3\n8 1\n6 2\n9 3\n1 1\n2 2\n1 3\n4 3\n2 1\n1 2\n"' do
    io = IO.popen("ruby abc170/E.rb", "w+")
    io.puts("6 3\n8 1\n6 2\n9 3\n1 1\n2 2\n1 3\n4 3\n2 1\n1 2\n")
    io.close_write
    expect(io.readlines.join).to eq("6\n2\n6\n")
  end

  it 'test with "2 2\n4208 1234\n3056 5678\n1 2020\n2 2020\n"' do
    io = IO.popen("ruby abc170/E.rb", "w+")
    io.puts("2 2\n4208 1234\n3056 5678\n1 2020\n2 2020\n")
    io.close_write
    expect(io.readlines.join).to eq("3056\n4208\n")
  end

end
