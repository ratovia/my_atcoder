require 'rspec'

RSpec.describe 'test' do
  it 'test with "12 18\n"' do
    io = IO.popen("ruby abc142/D.rb", "w+")
    io.puts("12 18\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "420 660\n"' do
    io = IO.popen("ruby abc142/D.rb", "w+")
    io.puts("420 660\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

  it 'test with "1 2019\n"' do
    io = IO.popen("ruby abc142/D.rb", "w+")
    io.puts("1 2019\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

end
