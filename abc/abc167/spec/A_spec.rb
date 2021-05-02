require 'rspec'

RSpec.describe 'test' do
  it 'test with "chokudai\nchokudaiz\n"' do
    io = IO.popen("ruby abc167/A.rb", "w+")
    io.puts("chokudai\nchokudaiz\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "snuke\nsnekee\n"' do
    io = IO.popen("ruby abc167/A.rb", "w+")
    io.puts("snuke\nsnekee\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

  it 'test with "a\naa\n"' do
    io = IO.popen("ruby abc167/A.rb", "w+")
    io.puts("a\naa\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

end
