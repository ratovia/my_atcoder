require 'rspec'

RSpec.describe 'test' do
  it 'test with "4\nRRGB\n"' do
    io = IO.popen("ruby abc162/D.rb", "w+")
    io.puts("4\nRRGB\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "39\nRBRBGRBGGBBRRGBBRRRBGGBRBGBRBGBRBBBGBBB\n"' do
    io = IO.popen("ruby abc162/D.rb", "w+")
    io.puts("39\nRBRBGRBGGBBRRGBBRRRBGGBRBGBRBGBRBBBGBBB\n")
    io.close_write
    expect(io.readlines.join).to eq("1800\n")
  end

end
