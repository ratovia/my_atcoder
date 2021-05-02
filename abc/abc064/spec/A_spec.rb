require 'rspec'

RSpec.describe 'test' do
  it 'test with "4 3 2\n"' do
    io = IO.popen("ruby abc064/A.rb", "w+")
    io.puts("4 3 2\n")
    io.close_write
    expect(io.readlines.join).to eq("YES\n")
  end

  it 'test with "2 3 4\n"' do
    io = IO.popen("ruby abc064/A.rb", "w+")
    io.puts("2 3 4\n")
    io.close_write
    expect(io.readlines.join).to eq("NO\n")
  end

end
