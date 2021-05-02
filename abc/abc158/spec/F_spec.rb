require 'rspec'

RSpec.describe 'test' do
  it 'test with "2\n1 5\n3 3\n"' do
    io = IO.popen("ruby abc158/F.rb", "w+")
    io.puts("2\n1 5\n3 3\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "3\n6 5\n-1 10\n3 3\n"' do
    io = IO.popen("ruby abc158/F.rb", "w+")
    io.puts("3\n6 5\n-1 10\n3 3\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n")
  end

  it 'test with "4\n7 10\n-10 3\n4 3\n-4 3\n"' do
    io = IO.popen("ruby abc158/F.rb", "w+")
    io.puts("4\n7 10\n-10 3\n4 3\n-4 3\n")
    io.close_write
    expect(io.readlines.join).to eq("16\n")
  end

  it 'test with "20\n-8 1\n26 4\n0 5\n9 1\n19 4\n22 20\n28 27\n11 8\n-3 20\n-25 17\n10 4\n-18 27\n24 28\n-11 19\n2 27\n-2 18\n-1 12\n-24 29\n31 29\n29 7\n"' do
    io = IO.popen("ruby abc158/F.rb", "w+")
    io.puts("20\n-8 1\n26 4\n0 5\n9 1\n19 4\n22 20\n28 27\n11 8\n-3 20\n-25 17\n10 4\n-18 27\n24 28\n-11 19\n2 27\n-2 18\n-1 12\n-24 29\n31 29\n29 7\n")
    io.close_write
    expect(io.readlines.join).to eq("110\n")
  end

end
