require 'rspec'

RSpec.describe 'test' do
  it 'test with "4\n"' do
    io = IO.popen("ruby abc134/A.rb", "w+")
    io.puts("4\n")
    io.close_write
    expect(io.readlines.join).to eq("48\n")
  end

  it 'test with "15\n"' do
    io = IO.popen("ruby abc134/A.rb", "w+")
    io.puts("15\n")
    io.close_write
    expect(io.readlines.join).to eq("675\n")
  end

  it 'test with "80\n"' do
    io = IO.popen("ruby abc134/A.rb", "w+")
    io.puts("80\n")
    io.close_write
    expect(io.readlines.join).to eq("19200\n")
  end

end
