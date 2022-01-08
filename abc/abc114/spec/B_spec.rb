require 'rspec'

RSpec.describe 'test' do
  it 'test with "1234567876\n"' do
    io = IO.popen("ruby abc114/B.rb", "w+")
    io.puts("1234567876\n")
    io.close_write
    expect(io.readlines.join).to eq("34\n")
  end

  it 'test with "35753\n"' do
    io = IO.popen("ruby abc114/B.rb", "w+")
    io.puts("35753\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "1111111111\n"' do
    io = IO.popen("ruby abc114/B.rb", "w+")
    io.puts("1111111111\n")
    io.close_write
    expect(io.readlines.join).to eq("642\n")
  end

end
