require 'rspec'

RSpec.describe 'test' do
  it 'test with "3 8 7 1\n"' do
    io = IO.popen("ruby abc083/A.rb", "w+")
    io.puts("3 8 7 1\n")
    io.close_write
    expect(io.readlines.join).to eq("Left\n")
  end

  it 'test with "3 4 5 2\n"' do
    io = IO.popen("ruby abc083/A.rb", "w+")
    io.puts("3 4 5 2\n")
    io.close_write
    expect(io.readlines.join).to eq("Balanced\n")
  end

  it 'test with "1 7 6 4\n"' do
    io = IO.popen("ruby abc083/A.rb", "w+")
    io.puts("1 7 6 4\n")
    io.close_write
    expect(io.readlines.join).to eq("Right\n")
  end

end
