require 'rspec'

RSpec.describe 'test' do
  it 'test with "5\n1 3 4 5 7\n"' do
    io = IO.popen("ruby aising2020/B.rb", "w+")
    io.puts("5\n1 3 4 5 7\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "15\n13 76 46 15 50 98 93 77 31 43 84 90 6 24 14\n"' do
    io = IO.popen("ruby aising2020/B.rb", "w+")
    io.puts("15\n13 76 46 15 50 98 93 77 31 43 84 90 6 24 14\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

end
