require 'rspec'

RSpec.describe 'test' do
  it 'test with "red blue\n3 4\nred\n"' do
    io = IO.popen("ruby abc154/A.rb", "w+")
    io.puts("red blue\n3 4\nred\n")
    io.close_write
    expect(io.readlines.join).to eq("2 4\n")
  end

  it 'test with "red blue\n5 5\nblue\n"' do
    io = IO.popen("ruby abc154/A.rb", "w+")
    io.puts("red blue\n5 5\nblue\n")
    io.close_write
    expect(io.readlines.join).to eq("5 4\n")
  end

end
