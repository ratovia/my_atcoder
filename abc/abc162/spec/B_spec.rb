require 'rspec'

RSpec.describe 'test' do
  it 'test with "15\n"' do
    io = IO.popen("ruby abc162/B.rb", "w+")
    io.puts("15\n")
    io.close_write
    expect(io.readlines.join).to eq("60\n")
  end

  it 'test with "1000000\n"' do
    io = IO.popen("ruby abc162/B.rb", "w+")
    io.puts("1000000\n")
    io.close_write
    expect(io.readlines.join).to eq("266666333332\n")
  end

end
