require 'rspec'

RSpec.describe 'test' do
  it 'test with "ABC\n"' do
    io = IO.popen("ruby abc166/A.rb", "w+")
    io.puts("ABC\n")
    io.close_write
    expect(io.readlines.join).to eq("ARC\n")
  end

end
