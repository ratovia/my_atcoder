require 'rspec'

RSpec.describe 'test' do
  it 'test with "999\n"' do
    io = IO.popen("ruby abc099/A.rb", "w+")
    io.puts("999\n")
    io.close_write
    expect(io.readlines.join).to eq("ABC\n")
  end

  it 'test with "1000\n"' do
    io = IO.popen("ruby abc099/A.rb", "w+")
    io.puts("1000\n")
    io.close_write
    expect(io.readlines.join).to eq("ABD\n")
  end

  it 'test with "1481\n"' do
    io = IO.popen("ruby abc099/A.rb", "w+")
    io.puts("1481\n")
    io.close_write
    expect(io.readlines.join).to eq("ABD\n")
  end

end
