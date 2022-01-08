require 'rspec'

RSpec.describe 'test' do
  it 'test with "5 5 7\n"' do
    io = IO.popen("ruby abc042/A.rb", "w+")
    io.puts("5 5 7\n")
    io.close_write
    expect(io.readlines.join).to eq("YES\n")
  end

  it 'test with "7 7 5\n"' do
    io = IO.popen("ruby abc042/A.rb", "w+")
    io.puts("7 7 5\n")
    io.close_write
    expect(io.readlines.join).to eq("NO\n")
  end

end
