require 'rspec'

RSpec.describe 'test' do
  it 'test with "3\n8 12 40\n"' do
    io = IO.popen("ruby abc081/B.rb", "w+")
    io.puts("3\n8 12 40\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "4\n5 6 8 10\n"' do
    io = IO.popen("ruby abc081/B.rb", "w+")
    io.puts("4\n5 6 8 10\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "6\n382253568 723152896 37802240 379425024 404894720 471526144\n"' do
    io = IO.popen("ruby abc081/B.rb", "w+")
    io.puts("6\n382253568 723152896 37802240 379425024 404894720 471526144\n")
    io.close_write
    expect(io.readlines.join).to eq("8\n")
  end

end
