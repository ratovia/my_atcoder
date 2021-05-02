require 'rspec'

RSpec.describe 'test' do
  it 'test with "4\n20 11 9 24\n"' do
    io = IO.popen("ruby abc171/E.rb", "w+")
    io.puts("4\n20 11 9 24\n")
    io.close_write
    expect(io.readlines.join).to eq("26 5 7 22\n")
  end

end
