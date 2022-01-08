require 'rspec'

RSpec.describe 'test' do
  it 'test with "3 2\n2\n1 3\n1\n3\n"' do
    io = IO.popen("ruby abc166/B.rb", "w+")
    io.puts("3 2\n2\n1 3\n1\n3\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "3 3\n1\n3\n1\n3\n1\n3\n"' do
    io = IO.popen("ruby abc166/B.rb", "w+")
    io.puts("3 3\n1\n3\n1\n3\n1\n3\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

end
