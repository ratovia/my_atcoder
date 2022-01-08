require 'rspec'

RSpec.describe 'test' do
  it 'test with "2 3 1\n"' do
    io = IO.popen("ruby tokiomarine2020/F.rb", "w+")
    io.puts("2 3 1\n")
    io.close_write
    expect(io.readlines.join).to eq("12\n")
  end

  it 'test with "5 4 5\n"' do
    io = IO.popen("ruby tokiomarine2020/F.rb", "w+")
    io.puts("5 4 5\n")
    io.close_write
    expect(io.readlines.join).to eq("132\n")
  end

  it 'test with "100 100 1000\n"' do
    io = IO.popen("ruby tokiomarine2020/F.rb", "w+")
    io.puts("100 100 1000\n")
    io.close_write
    expect(io.readlines.join).to eq("461316\n")
  end

end
