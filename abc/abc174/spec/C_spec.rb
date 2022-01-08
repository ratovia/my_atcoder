require 'rspec'

RSpec.describe 'test' do
  it 'test with "101\n"' do
    io = IO.popen("ruby abc174/C.rb", "w+")
    io.puts("101\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

  it 'test with "2\n"' do
    io = IO.popen("ruby abc174/C.rb", "w+")
    io.puts("2\n")
    io.close_write
    expect(io.readlines.join).to eq("-1\n")
  end

  it 'test with "999983\n"' do
    io = IO.popen("ruby abc174/C.rb", "w+")
    io.puts("999983\n")
    io.close_write
    expect(io.readlines.join).to eq("999982\n")
  end

end
