require 'rspec'

RSpec.describe 'test' do
  it 'test with "4 10\n"' do
    io = IO.popen("ruby abc139/B.rb", "w+")
    io.puts("4 10\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "8 9\n"' do
    io = IO.popen("ruby abc139/B.rb", "w+")
    io.puts("8 9\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "8 8\n"' do
    io = IO.popen("ruby abc139/B.rb", "w+")
    io.puts("8 8\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

end
