require 'rspec'

RSpec.describe 'test' do
  it 'test with "sardine\n"' do
    io = IO.popen("ruby abc154/B.rb", "w+")
    io.puts("sardine\n")
    io.close_write
    expect(io.readlines.join).to eq("xxxxxxx\n")
  end

  it 'test with "xxxx\n"' do
    io = IO.popen("ruby abc154/B.rb", "w+")
    io.puts("xxxx\n")
    io.close_write
    expect(io.readlines.join).to eq("xxxx\n")
  end

  it 'test with "gone\n"' do
    io = IO.popen("ruby abc154/B.rb", "w+")
    io.puts("gone\n")
    io.close_write
    expect(io.readlines.join).to eq("xxxx\n")
  end

end
