require 'rspec'

RSpec.describe 'test' do
  it 'test with "ABA\n"' do
    io = IO.popen("ruby abc158/A.rb", "w+")
    io.puts("ABA\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "BBA\n"' do
    io = IO.popen("ruby abc158/A.rb", "w+")
    io.puts("BBA\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "BBB\n"' do
    io = IO.popen("ruby abc158/A.rb", "w+")
    io.puts("BBB\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

end
