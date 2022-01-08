require 'rspec'

RSpec.describe 'test' do
  it 'test with "127\n"' do
    io = IO.popen("ruby abc099/C.rb", "w+")
    io.puts("127\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

  it 'test with "3\n"' do
    io = IO.popen("ruby abc099/C.rb", "w+")
    io.puts("3\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "44852\n"' do
    io = IO.popen("ruby abc099/C.rb", "w+")
    io.puts("44852\n")
    io.close_write
    expect(io.readlines.join).to eq("16\n")
  end

end
