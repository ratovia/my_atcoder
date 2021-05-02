require 'rspec'

RSpec.describe 'test' do
  it 'test with "2018\n218\n"' do
    io = IO.popen("ruby abc088/A.rb", "w+")
    io.puts("2018\n218\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "2763\n0\n"' do
    io = IO.popen("ruby abc088/A.rb", "w+")
    io.puts("2763\n0\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

  it 'test with "37\n514\n"' do
    io = IO.popen("ruby abc088/A.rb", "w+")
    io.puts("37\n514\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

end
