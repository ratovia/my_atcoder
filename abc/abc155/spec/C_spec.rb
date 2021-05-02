require 'rspec'

RSpec.describe 'test' do
  it 'test with "7\nbeat\nvet\nbeet\nbed\nvet\nbet\nbeet\n"' do
    io = IO.popen("ruby abc155/C.rb", "w+")
    io.puts("7\nbeat\nvet\nbeet\nbed\nvet\nbet\nbeet\n")
    io.close_write
    expect(io.readlines.join).to eq("beet\nvet\n")
  end

  it 'test with "8\nbuffalo\nbuffalo\nbuffalo\nbuffalo\nbuffalo\nbuffalo\nbuffalo\nbuffalo\n"' do
    io = IO.popen("ruby abc155/C.rb", "w+")
    io.puts("8\nbuffalo\nbuffalo\nbuffalo\nbuffalo\nbuffalo\nbuffalo\nbuffalo\nbuffalo\n")
    io.close_write
    expect(io.readlines.join).to eq("buffalo\n")
  end

  it 'test with "7\nbass\nbass\nkick\nkick\nbass\nkick\nkick\n"' do
    io = IO.popen("ruby abc155/C.rb", "w+")
    io.puts("7\nbass\nbass\nkick\nkick\nbass\nkick\nkick\n")
    io.close_write
    expect(io.readlines.join).to eq("kick\n")
  end

  it 'test with "4\nushi\ntapu\nnichia\nkun\n"' do
    io = IO.popen("ruby abc155/C.rb", "w+")
    io.puts("4\nushi\ntapu\nnichia\nkun\n")
    io.close_write
    expect(io.readlines.join).to eq("kun\nnichia\ntapu\nushi\n")
  end

end
