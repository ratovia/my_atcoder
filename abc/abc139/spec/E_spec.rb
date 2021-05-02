require 'rspec'

RSpec.describe 'test' do
  it 'test with "3\n2 3\n1 3\n1 2\n"' do
    io = IO.popen("ruby abc139/E.rb", "w+")
    io.puts("3\n2 3\n1 3\n1 2\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "4\n2 3 4\n1 3 4\n4 1 2\n3 1 2\n"' do
    io = IO.popen("ruby abc139/E.rb", "w+")
    io.puts("4\n2 3 4\n1 3 4\n4 1 2\n3 1 2\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

  it 'test with "3\n2 3\n3 1\n1 2\n"' do
    io = IO.popen("ruby abc139/E.rb", "w+")
    io.puts("3\n2 3\n3 1\n1 2\n")
    io.close_write
    expect(io.readlines.join).to eq("-1\n")
  end

end
