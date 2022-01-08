require 'rspec'

RSpec.describe 'test' do
  it 'test with "4\n10\n8\n8\n6\n"' do
    io = IO.popen("ruby abc085/B.rb", "w+")
    io.puts("4\n10\n8\n8\n6\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "3\n15\n15\n15\n"' do
    io = IO.popen("ruby abc085/B.rb", "w+")
    io.puts("3\n15\n15\n15\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "7\n50\n30\n50\n100\n50\n80\n30\n"' do
    io = IO.popen("ruby abc085/B.rb", "w+")
    io.puts("7\n50\n30\n50\n100\n50\n80\n30\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

end
