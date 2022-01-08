require 'rspec'

RSpec.describe 'test' do
  it 'test with "10\n"' do
    io = IO.popen("ruby abc129/E.rb", "w+")
    io.puts("10\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n")
  end

  it 'test with "1111111111111111111\n"' do
    io = IO.popen("ruby abc129/E.rb", "w+")
    io.puts("1111111111111111111\n")
    io.close_write
    expect(io.readlines.join).to eq("162261460\n")
  end

end
