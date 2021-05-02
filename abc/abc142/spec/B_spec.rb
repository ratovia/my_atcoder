require 'rspec'

RSpec.describe 'test' do
  it 'test with "4 150\n150 140 100 200\n"' do
    io = IO.popen("ruby abc142/B.rb", "w+")
    io.puts("4 150\n150 140 100 200\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "1 500\n499\n"' do
    io = IO.popen("ruby abc142/B.rb", "w+")
    io.puts("1 500\n499\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "5 1\n100 200 300 400 500\n"' do
    io = IO.popen("ruby abc142/B.rb", "w+")
    io.puts("5 1\n100 200 300 400 500\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n")
  end

end
