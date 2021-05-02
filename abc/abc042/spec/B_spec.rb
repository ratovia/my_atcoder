require 'rspec'

RSpec.describe 'test' do
  it 'test with "3 3\ndxx\naxx\ncxx\n"' do
    io = IO.popen("ruby abc042/B.rb", "w+")
    io.puts("3 3\ndxx\naxx\ncxx\n")
    io.close_write
    expect(io.readlines.join).to eq("axxcxxdxx\n")
  end

end
