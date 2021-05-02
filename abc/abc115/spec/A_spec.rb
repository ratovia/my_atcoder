require 'rspec'

RSpec.describe 'test' do
  it 'test with "25\n"' do
    io = IO.popen("ruby abc115/A.rb", "w+")
    io.puts("25\n")
    io.close_write
    expect(io.readlines.join).to eq("Christmas\n")
  end

  it 'test with "22\n"' do
    io = IO.popen("ruby abc115/A.rb", "w+")
    io.puts("22\n")
    io.close_write
    expect(io.readlines.join).to eq("Christmas Eve Eve Eve\n")
  end

end
