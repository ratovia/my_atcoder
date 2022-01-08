require 'rspec'

RSpec.describe 'test' do
  it 'test with "2 2 4\n"' do
    io = IO.popen("ruby abc144/D.rb", "w+")
    io.puts("2 2 4\n")
    io.close_write
    expect(io.readlines.join).to eq("45.0000000000\n")
  end

  it 'test with "12 21 10\n"' do
    io = IO.popen("ruby abc144/D.rb", "w+")
    io.puts("12 21 10\n")
    io.close_write
    expect(io.readlines.join).to eq("89.7834636934\n")
  end

  it 'test with "3 1 8\n"' do
    io = IO.popen("ruby abc144/D.rb", "w+")
    io.puts("3 1 8\n")
    io.close_write
    expect(io.readlines.join).to eq("4.2363947991\n")
  end

end
