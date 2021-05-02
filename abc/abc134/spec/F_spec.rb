require 'rspec'

RSpec.describe 'test' do
  it 'test with "3 2\n"' do
    io = IO.popen("ruby abc134/F.rb", "w+")
    io.puts("3 2\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "39 14\n"' do
    io = IO.popen("ruby abc134/F.rb", "w+")
    io.puts("39 14\n")
    io.close_write
    expect(io.readlines.join).to eq("74764168\n")
  end

end
