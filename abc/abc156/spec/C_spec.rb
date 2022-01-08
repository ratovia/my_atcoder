require 'rspec'

RSpec.describe 'test' do
  it 'test with "2\n1 4\n"' do
    io = IO.popen("ruby abc156/C.rb", "w+")
    io.puts("2\n1 4\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n")
  end

  it 'test with "7\n14 14 2 13 56 2 37\n"' do
    io = IO.popen("ruby abc156/C.rb", "w+")
    io.puts("7\n14 14 2 13 56 2 37\n")
    io.close_write
    expect(io.readlines.join).to eq("2354\n")
  end

end
