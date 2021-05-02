require 'rspec'

RSpec.describe 'test' do
  it 'test with "5\n6 7 9 10 31\n"' do
    io = IO.popen("ruby abc155/B.rb", "w+")
    io.puts("5\n6 7 9 10 31\n")
    io.close_write
    expect(io.readlines.join).to eq("APPROVED\n")
  end

  it 'test with "3\n28 27 24\n"' do
    io = IO.popen("ruby abc155/B.rb", "w+")
    io.puts("3\n28 27 24\n")
    io.close_write
    expect(io.readlines.join).to eq("DENIED\n")
  end

end
