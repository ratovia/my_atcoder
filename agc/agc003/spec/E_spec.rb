require 'rspec'

RSpec.describe 'test' do
  it 'test with "5 3\n6\n4\n11\n"' do
    io = IO.popen("ruby agc003/E.rb", "w+")
    io.puts("5 3\n6\n4\n11\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n3\n3\n2\n0\n")
  end

  it 'test with "10 10\n9\n13\n18\n8\n10\n10\n9\n19\n22\n27\n"' do
    io = IO.popen("ruby agc003/E.rb", "w+")
    io.puts("10 10\n9\n13\n18\n8\n10\n10\n9\n19\n22\n27\n")
    io.close_write
    expect(io.readlines.join).to eq("7\n4\n4\n3\n3\n2\n2\n2\n0\n0\n")
  end

end
