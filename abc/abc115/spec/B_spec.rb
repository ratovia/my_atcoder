require 'rspec'

RSpec.describe 'test' do
  it 'test with "3\n4980\n7980\n6980\n"' do
    io = IO.popen("ruby abc115/B.rb", "w+")
    io.puts("3\n4980\n7980\n6980\n")
    io.close_write
    expect(io.readlines.join).to eq("15950\n")
  end

  it 'test with "4\n4320\n4320\n4320\n4320\n"' do
    io = IO.popen("ruby abc115/B.rb", "w+")
    io.puts("4\n4320\n4320\n4320\n4320\n")
    io.close_write
    expect(io.readlines.join).to eq("15120\n")
  end

end
