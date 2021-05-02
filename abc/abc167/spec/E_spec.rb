require 'rspec'

RSpec.describe 'test' do
  it 'test with "3 2 1\n"' do
    io = IO.popen("ruby abc167/E.rb", "w+")
    io.puts("3 2 1\n")
    io.close_write
    expect(io.readlines.join).to eq("6\n")
  end

  it 'test with "100 100 0\n"' do
    io = IO.popen("ruby abc167/E.rb", "w+")
    io.puts("100 100 0\n")
    io.close_write
    expect(io.readlines.join).to eq("73074801\n")
  end

  it 'test with "60522 114575 7559\n"' do
    io = IO.popen("ruby abc167/E.rb", "w+")
    io.puts("60522 114575 7559\n")
    io.close_write
    expect(io.readlines.join).to eq("479519525\n")
  end

end
