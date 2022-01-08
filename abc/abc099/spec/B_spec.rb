require 'rspec'

RSpec.describe 'test' do
  it 'test with "8 13\n"' do
    io = IO.popen("ruby abc099/B.rb", "w+")
    io.puts("8 13\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "54 65\n"' do
    io = IO.popen("ruby abc099/B.rb", "w+")
    io.puts("54 65\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

end
