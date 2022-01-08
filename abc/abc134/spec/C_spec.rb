require 'rspec'

RSpec.describe 'test' do
  it 'test with "3\n1\n4\n3\n"' do
    io = IO.popen("ruby abc134/C.rb", "w+")
    io.puts("3\n1\n4\n3\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n3\n4\n")
  end

  it 'test with "2\n5\n5\n"' do
    io = IO.popen("ruby abc134/C.rb", "w+")
    io.puts("2\n5\n5\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n5\n")
  end

end
