require 'rspec'

RSpec.describe 'test' do
  it 'test with "2\n2 2\n"' do
    io = IO.popen("ruby agc041/F.rb", "w+")
    io.puts("2\n2 2\n")
    io.close_write
    expect(io.readlines.join).to eq("11\n")
  end

  it 'test with "3\n2 1 2\n"' do
    io = IO.popen("ruby agc041/F.rb", "w+")
    io.puts("3\n2 1 2\n")
    io.close_write
    expect(io.readlines.join).to eq("17\n")
  end

  it 'test with "R *     * R     * *     R R     R R     R R     \n**R     R**     R*R     R**     *R*     **R     \n\n\nR *     R *     * R     * R     * *     R R     \nR*R     *RR     RR*     R*R     RRR     RR*     \n\n\nR R     R R     R *     * R     R R     \nR*R     *RR     RRR     RRR     RRR     \n"' do
    io = IO.popen("ruby agc041/F.rb", "w+")
    io.puts("R *     * R     * *     R R     R R     R R     \n**R     R**     R*R     R**     *R*     **R     \n\n\nR *     R *     * R     * R     * *     R R     \nR*R     *RR     RR*     R*R     RRR     RR*     \n\n\nR R     R R     R *     * R     R R     \nR*R     *RR     RRR     RRR     RRR     \n")
    io.close_write
    expect(io.readlines.join).to eq("4\n1 2 4 1\n")
  end

  it 'test with "201\n"' do
    io = IO.popen("ruby agc041/F.rb", "w+")
    io.puts("201\n")
    io.close_write
    expect(io.readlines.join).to eq("10\n4 7 4 8 4 6 8 2 3 6\n")
  end

  it 'test with "263244071\n"' do
    io = IO.popen("ruby agc041/F.rb", "w+")
    io.puts("263244071\n")
    io.close_write
    expect(io.readlines.join).to eq()
  end

end
