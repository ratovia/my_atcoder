require 'rspec'

RSpec.describe 'test' do
  it 'test with "3 3 0 3\n1 2 3\n"' do
    io = IO.popen("ruby tokiomarine2020/E.rb", "w+")
    io.puts("3 3 0 3\n1 2 3\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "5 3 1 7\n3 4 9 1 5\n"' do
    io = IO.popen("ruby tokiomarine2020/E.rb", "w+")
    io.puts("5 3 1 7\n3 4 9 1 5\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "5 4 0 15\n3 4 9 1 5\n"' do
    io = IO.popen("ruby tokiomarine2020/E.rb", "w+")
    io.puts("5 4 0 15\n3 4 9 1 5\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

end
