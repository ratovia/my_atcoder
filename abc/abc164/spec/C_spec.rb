require 'rspec'

RSpec.describe 'test' do
  it 'test with "3\napple\norange\napple\n"' do
    io = IO.popen("ruby abc164/C.rb", "w+")
    io.puts("3\napple\norange\napple\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "5\ngrape\ngrape\ngrape\ngrape\ngrape\n"' do
    io = IO.popen("ruby abc164/C.rb", "w+")
    io.puts("5\ngrape\ngrape\ngrape\ngrape\ngrape\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "4\naaaa\na\naaa\naa\n"' do
    io = IO.popen("ruby abc164/C.rb", "w+")
    io.puts("4\naaaa\na\naaa\naa\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

end
