require 'rspec'

RSpec.describe 'test' do
  it 'test with "3\n011\n"' do
    io = IO.popen("ruby aising2020/D.rb", "w+")
    io.puts("3\n011\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n1\n1\n")
  end

  it 'test with "23\n00110111001011011001110\n"' do
    io = IO.popen("ruby aising2020/D.rb", "w+")
    io.puts("23\n00110111001011011001110\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n1\n2\n2\n1\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n2\n1\n3\n")
  end

end
