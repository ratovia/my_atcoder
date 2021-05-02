require 'rspec'

RSpec.describe 'test' do
  it 'test with "3\n1 2 3\n"' do
    io = IO.popen("ruby abc177/C.rb", "w+")
    io.puts("3\n1 2 3\n")
    io.close_write
    expect(io.readlines.join).to eq("11\n")
  end

  it 'test with "4\n141421356 17320508 22360679 244949\n"' do
    io = IO.popen("ruby abc177/C.rb", "w+")
    io.puts("4\n141421356 17320508 22360679 244949\n")
    io.close_write
    expect(io.readlines.join).to eq("437235829\n")
  end

end
