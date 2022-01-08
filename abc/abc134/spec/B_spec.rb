require 'rspec'

RSpec.describe 'test' do
  it 'test with "6 2\n"' do
    io = IO.popen("ruby abc134/B.rb", "w+")
    io.puts("6 2\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "14 3\n"' do
    io = IO.popen("ruby abc134/B.rb", "w+")
    io.puts("14 3\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "20 4\n"' do
    io = IO.popen("ruby abc134/B.rb", "w+")
    io.puts("20 4\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

end
