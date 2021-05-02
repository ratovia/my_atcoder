require 'rspec'

RSpec.describe 'test' do
  it 'test with "3 4\n"' do
    io = IO.popen("ruby abc086/A.rb", "w+")
    io.puts("3 4\n")
    io.close_write
    expect(io.readlines.join).to eq("Even\n")
  end

  it 'test with "1 21\n"' do
    io = IO.popen("ruby abc086/A.rb", "w+")
    io.puts("1 21\n")
    io.close_write
    expect(io.readlines.join).to eq("Odd\n")
  end

end
