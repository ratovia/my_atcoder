require 'rspec'

RSpec.describe 'test' do
  it 'test with "1 1 2 2\n"' do
    io = IO.popen("ruby abc154/F.rb", "w+")
    io.puts("1 1 2 2\n")
    io.close_write
    expect(io.readlines.join).to eq("14\n")
  end

  it 'test with "314 159 2653 589\n"' do
    io = IO.popen("ruby abc154/F.rb", "w+")
    io.puts("314 159 2653 589\n")
    io.close_write
    expect(io.readlines.join).to eq("602215194\n")
  end

end
