require 'rspec'

RSpec.describe 'test' do
  it 'test with "8 3 4\n"' do
    io = IO.popen("ruby abc158/B.rb", "w+")
    io.puts("8 3 4\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

  it 'test with "8 0 4\n"' do
    io = IO.popen("ruby abc158/B.rb", "w+")
    io.puts("8 0 4\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "6 2 4\n"' do
    io = IO.popen("ruby abc158/B.rb", "w+")
    io.puts("6 2 4\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

end
