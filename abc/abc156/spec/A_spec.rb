require 'rspec'

RSpec.describe 'test' do
  it 'test with "2 2919\n"' do
    io = IO.popen("ruby abc156/A.rb", "w+")
    io.puts("2 2919\n")
    io.close_write
    expect(io.readlines.join).to eq("3719\n")
  end

  it 'test with "22 3051\n"' do
    io = IO.popen("ruby abc156/A.rb", "w+")
    io.puts("22 3051\n")
    io.close_write
    expect(io.readlines.join).to eq("3051\n")
  end

end
