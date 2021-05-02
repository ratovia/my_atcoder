require 'rspec'

RSpec.describe 'test' do
  it 'test with "1 3 4\n"' do
    io = IO.popen("ruby abc129/A.rb", "w+")
    io.puts("1 3 4\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

  it 'test with "3 2 3\n"' do
    io = IO.popen("ruby abc129/A.rb", "w+")
    io.puts("3 2 3\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n")
  end

end
