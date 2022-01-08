require 'rspec'

RSpec.describe 'test' do
  it 'test with "16\n"' do
    io = IO.popen("ruby abc168/A.rb", "w+")
    io.puts("16\n")
    io.close_write
    expect(io.readlines.join).to eq("pon\n")
  end

  it 'test with "2\n"' do
    io = IO.popen("ruby abc168/A.rb", "w+")
    io.puts("2\n")
    io.close_write
    expect(io.readlines.join).to eq("hon\n")
  end

  it 'test with "183\n"' do
    io = IO.popen("ruby abc168/A.rb", "w+")
    io.puts("183\n")
    io.close_write
    expect(io.readlines.join).to eq("bon\n")
  end

end
