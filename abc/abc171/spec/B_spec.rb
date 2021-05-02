require 'rspec'

RSpec.describe 'test' do
  it 'test with "5 3\n50 100 80 120 80\n"' do
    io = IO.popen("ruby abc171/B.rb", "w+")
    io.puts("5 3\n50 100 80 120 80\n")
    io.close_write
    expect(io.readlines.join).to eq("210\n")
  end

  it 'test with "1 1\n1000\n"' do
    io = IO.popen("ruby abc171/B.rb", "w+")
    io.puts("1 1\n1000\n")
    io.close_write
    expect(io.readlines.join).to eq("1000\n")
  end

end
