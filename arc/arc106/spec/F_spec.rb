require 'rspec'

RSpec.describe 'test' do
  it 'test with "3\n1 1 3\n"' do
    io = IO.popen("ruby arc106/F.rb", "w+")
    io.puts("3\n1 1 3\n")
    io.close_write
    expect(io.readlines.join).to eq("6\n")
  end

  it 'test with "3\n1 1 1\n"' do
    io = IO.popen("ruby arc106/F.rb", "w+")
    io.puts("3\n1 1 1\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "6\n7 3 5 10 6 4\n"' do
    io = IO.popen("ruby arc106/F.rb", "w+")
    io.puts("6\n7 3 5 10 6 4\n")
    io.close_write
    expect(io.readlines.join).to eq("389183858\n")
  end

  it 'test with "9\n425656 453453 4320 1231 9582 54336 31435436 14342 423543\n"' do
    io = IO.popen("ruby arc106/F.rb", "w+")
    io.puts("9\n425656 453453 4320 1231 9582 54336 31435436 14342 423543\n")
    io.close_write
    expect(io.readlines.join).to eq("667877982\n")
  end

end
