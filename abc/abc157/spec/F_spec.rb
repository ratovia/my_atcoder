require 'rspec'

RSpec.describe 'test' do
  it 'test with "4 3\n-1 0 3\n0 0 3\n1 0 2\n1 1 40\n"' do
    io = IO.popen("ruby abc157/F.rb", "w+")
    io.puts("4 3\n-1 0 3\n0 0 3\n1 0 2\n1 1 40\n")
    io.close_write
    expect(io.readlines.join).to eq("2.4\n")
  end

  it 'test with "10 5\n-879 981 26\n890 -406 81\n512 859 97\n362 -955 25\n128 553 17\n-885 763 2\n449 310 57\n-656 -204 11\n-270 76 40\n184 170 16\n"' do
    io = IO.popen("ruby abc157/F.rb", "w+")
    io.puts("10 5\n-879 981 26\n890 -406 81\n512 859 97\n362 -955 25\n128 553 17\n-885 763 2\n449 310 57\n-656 -204 11\n-270 76 40\n184 170 16\n")
    io.close_write
    expect(io.readlines.join).to eq("7411.2252\n")
  end

end
