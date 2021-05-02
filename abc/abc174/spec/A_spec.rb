require 'rspec'

RSpec.describe 'test' do
  it 'test with "25\n"' do
    io = IO.popen("ruby abc174/A.rb", "w+")
    io.puts("25\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

  it 'test with "30\n"' do
    io = IO.popen("ruby abc174/A.rb", "w+")
    io.puts("30\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

end
