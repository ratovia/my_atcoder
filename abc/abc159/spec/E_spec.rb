require 'rspec'

RSpec.describe 'test' do
  it 'test with "3 5 4\n11100\n10001\n00111\n"' do
    io = IO.popen("ruby abc159/E.rb", "w+")
    io.puts("3 5 4\n11100\n10001\n00111\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "3 5 8\n11100\n10001\n00111\n"' do
    io = IO.popen("ruby abc159/E.rb", "w+")
    io.puts("3 5 8\n11100\n10001\n00111\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "4 10 4\n1110010010\n1000101110\n0011101001\n1101000111\n"' do
    io = IO.popen("ruby abc159/E.rb", "w+")
    io.puts("4 10 4\n1110010010\n1000101110\n0011101001\n1101000111\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

end
