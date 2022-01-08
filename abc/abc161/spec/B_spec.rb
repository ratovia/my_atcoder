require 'rspec'

RSpec.describe 'test' do
  it 'test with "4 1\n5 4 2 1\n"' do
    io = IO.popen("ruby abc161/B.rb", "w+")
    io.puts("4 1\n5 4 2 1\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "3 2\n380 19 1\n"' do
    io = IO.popen("ruby abc161/B.rb", "w+")
    io.puts("3 2\n380 19 1\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

  it 'test with "12 3\n4 56 78 901 2 345 67 890 123 45 6 789\n"' do
    io = IO.popen("ruby abc161/B.rb", "w+")
    io.puts("12 3\n4 56 78 901 2 345 67 890 123 45 6 789\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

end
