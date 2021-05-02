require 'rspec'

RSpec.describe 'test' do
  it 'test with "3\n3 4 5\n"' do
    io = IO.popen("ruby abc177/E.rb", "w+")
    io.puts("3\n3 4 5\n")
    io.close_write
    expect(io.readlines.join).to eq("pairwise coprime\n")
  end

  it 'test with "3\n6 10 15\n"' do
    io = IO.popen("ruby abc177/E.rb", "w+")
    io.puts("3\n6 10 15\n")
    io.close_write
    expect(io.readlines.join).to eq("setwise coprime\n")
  end

  it 'test with "3\n6 10 16\n"' do
    io = IO.popen("ruby abc177/E.rb", "w+")
    io.puts("3\n6 10 16\n")
    io.close_write
    expect(io.readlines.join).to eq("not coprime\n")
  end

end
