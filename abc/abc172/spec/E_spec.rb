require 'rspec'

RSpec.describe 'test' do
  it 'test with "2 2\n"' do
    io = IO.popen("ruby abc172/E.rb", "w+")
    io.puts("2 2\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "2 3\n"' do
    io = IO.popen("ruby abc172/E.rb", "w+")
    io.puts("2 3\n")
    io.close_write
    expect(io.readlines.join).to eq("18\n")
  end

  it 'test with "141421 356237\n"' do
    io = IO.popen("ruby abc172/E.rb", "w+")
    io.puts("141421 356237\n")
    io.close_write
    expect(io.readlines.join).to eq("881613484\n")
  end

end
