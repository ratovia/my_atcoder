require 'rspec'

RSpec.describe 'test' do
  it 'test with "2\n5 3\n"' do
    io = IO.popen("ruby abc172/F.rb", "w+")
    io.puts("2\n5 3\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "2\n3 5\n"' do
    io = IO.popen("ruby abc172/F.rb", "w+")
    io.puts("2\n3 5\n")
    io.close_write
    expect(io.readlines.join).to eq("-1\n")
  end

  it 'test with "3\n1 1 2\n"' do
    io = IO.popen("ruby abc172/F.rb", "w+")
    io.puts("3\n1 1 2\n")
    io.close_write
    expect(io.readlines.join).to eq("-1\n")
  end

  it 'test with "8\n10 9 8 7 6 5 4 3\n"' do
    io = IO.popen("ruby abc172/F.rb", "w+")
    io.puts("8\n10 9 8 7 6 5 4 3\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "3\n4294967297 8589934593 12884901890\n"' do
    io = IO.popen("ruby abc172/F.rb", "w+")
    io.puts("3\n4294967297 8589934593 12884901890\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

end
