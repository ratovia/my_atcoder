require 'rspec'

RSpec.describe 'test' do
  it 'test with "2\n3 1\n"' do
    io = IO.popen("ruby abc088/B.rb", "w+")
    io.puts("2\n3 1\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "3\n2 7 4\n"' do
    io = IO.popen("ruby abc088/B.rb", "w+")
    io.puts("3\n2 7 4\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n")
  end

  it 'test with "4\n20 18 2 18\n"' do
    io = IO.popen("ruby abc088/B.rb", "w+")
    io.puts("4\n20 18 2 18\n")
    io.close_write
    expect(io.readlines.join).to eq("18\n")
  end

end
