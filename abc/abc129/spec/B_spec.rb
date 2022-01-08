require 'rspec'

RSpec.describe 'test' do
  it 'test with "3\n1 2 3\n"' do
    io = IO.popen("ruby abc129/B.rb", "w+")
    io.puts("3\n1 2 3\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "4\n1 3 1 1\n"' do
    io = IO.popen("ruby abc129/B.rb", "w+")
    io.puts("4\n1 3 1 1\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "8\n27 23 76 2 3 5 62 52\n"' do
    io = IO.popen("ruby abc129/B.rb", "w+")
    io.puts("8\n27 23 76 2 3 5 62 52\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

end
