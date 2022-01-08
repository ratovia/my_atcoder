require 'rspec'

RSpec.describe 'test' do
  it 'test with "6\nAC\nTLE\nAC\nAC\nWA\nTLE\n"' do
    io = IO.popen("ruby abc173/B.rb", "w+")
    io.puts("6\nAC\nTLE\nAC\nAC\nWA\nTLE\n")
    io.close_write
    expect(io.readlines.join).to eq("AC x 3\nWA x 1\nTLE x 2\nRE x 0\n")
  end

  it 'test with "10\nAC\nAC\nAC\nAC\nAC\nAC\nAC\nAC\nAC\nAC\n"' do
    io = IO.popen("ruby abc173/B.rb", "w+")
    io.puts("10\nAC\nAC\nAC\nAC\nAC\nAC\nAC\nAC\nAC\nAC\n")
    io.close_write
    expect(io.readlines.join).to eq("AC x 10\nWA x 0\nTLE x 0\nRE x 0\n")
  end

end
