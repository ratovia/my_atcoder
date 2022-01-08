require 'rspec'

RSpec.describe 'test' do
  it 'test with "2 1 3 0\nAB\nAC\n"' do
    io = IO.popen("ruby abc166/F.rb", "w+")
    io.puts("2 1 3 0\nAB\nAC\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\nA\nC\n")
  end

  it 'test with "3 1 0 0\nAB\nBC\nAB\n"' do
    io = IO.popen("ruby abc166/F.rb", "w+")
    io.puts("3 1 0 0\nAB\nBC\nAB\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

  it 'test with "1 0 9 0\nAC\n"' do
    io = IO.popen("ruby abc166/F.rb", "w+")
    io.puts("1 0 9 0\nAC\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

  it 'test with "8 6 9 1\nAC\nBC\nAB\nBC\nAC\nBC\nAB\nAB\n"' do
    io = IO.popen("ruby abc166/F.rb", "w+")
    io.puts("8 6 9 1\nAC\nBC\nAB\nBC\nAC\nBC\nAB\nAB\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\nC\nB\nB\nC\nC\nB\nA\nA\n")
  end

end
