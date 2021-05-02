require 'rspec'

RSpec.describe 'test' do
  it 'test with "3 1000\n120\n100\n140\n"' do
    io = IO.popen("ruby abc095/B.rb", "w+")
    io.puts("3 1000\n120\n100\n140\n")
    io.close_write
    expect(io.readlines.join).to eq("9\n")
  end

  it 'test with "4 360\n90\n90\n90\n90\n"' do
    io = IO.popen("ruby abc095/B.rb", "w+")
    io.puts("4 360\n90\n90\n90\n90\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

  it 'test with "5 3000\n150\n130\n150\n130\n110\n"' do
    io = IO.popen("ruby abc095/B.rb", "w+")
    io.puts("5 3000\n150\n130\n150\n130\n110\n")
    io.close_write
    expect(io.readlines.join).to eq("26\n")
  end

end
