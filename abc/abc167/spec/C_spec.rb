require 'rspec'

RSpec.describe 'test' do
  it 'test with "3 3 10\n60 2 2 4\n70 8 7 9\n50 2 3 9\n"' do
    io = IO.popen("ruby abc167/C.rb", "w+")
    io.puts("3 3 10\n60 2 2 4\n70 8 7 9\n50 2 3 9\n")
    io.close_write
    expect(io.readlines.join).to eq("120\n")
  end

  it 'test with "3 3 10\n100 3 1 4\n100 1 5 9\n100 2 6 5\n"' do
    io = IO.popen("ruby abc167/C.rb", "w+")
    io.puts("3 3 10\n100 3 1 4\n100 1 5 9\n100 2 6 5\n")
    io.close_write
    expect(io.readlines.join).to eq("-1\n")
  end

  it 'test with "8 5 22\n100 3 7 5 3 1\n164 4 5 2 7 8\n334 7 2 7 2 9\n234 4 7 2 8 2\n541 5 4 3 3 6\n235 4 8 6 9 7\n394 3 6 1 6 2\n872 8 4 3 7 2\n"' do
    io = IO.popen("ruby abc167/C.rb", "w+")
    io.puts("8 5 22\n100 3 7 5 3 1\n164 4 5 2 7 8\n334 7 2 7 2 9\n234 4 7 2 8 2\n541 5 4 3 3 6\n235 4 8 6 9 7\n394 3 6 1 6 2\n872 8 4 3 7 2\n")
    io.close_write
    expect(io.readlines.join).to eq("1067\n")
  end

end
