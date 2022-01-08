require 'rspec'

RSpec.describe 'test' do
  it 'test with "3\nba 3\nabc 4\ncbaa 5\n"' do
    io = IO.popen("ruby abc175/F.rb", "w+")
    io.puts("3\nba 3\nabc 4\ncbaa 5\n")
    io.close_write
    expect(io.readlines.join).to eq("7\n")
  end

  it 'test with "2\nabcab 5\ncba 3\n"' do
    io = IO.popen("ruby abc175/F.rb", "w+")
    io.puts("2\nabcab 5\ncba 3\n")
    io.close_write
    expect(io.readlines.join).to eq("11\n")
  end

  it 'test with "4\nab 5\ncba 3\na 12\nab 10\n"' do
    io = IO.popen("ruby abc175/F.rb", "w+")
    io.puts("4\nab 5\ncba 3\na 12\nab 10\n")
    io.close_write
    expect(io.readlines.join).to eq("8\n")
  end

  it 'test with "2\nabc 1\nab 2\n"' do
    io = IO.popen("ruby abc175/F.rb", "w+")
    io.puts("2\nabc 1\nab 2\n")
    io.close_write
    expect(io.readlines.join).to eq("-1\n")
  end

end
