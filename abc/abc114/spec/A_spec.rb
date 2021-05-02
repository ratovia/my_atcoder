require 'rspec'

RSpec.describe 'test' do
  it 'test with "5\n"' do
    io = IO.popen("ruby abc114/A.rb", "w+")
    io.puts("5\n")
    io.close_write
    expect(io.readlines.join).to eq("YES\n")
  end

  it 'test with "6\n"' do
    io = IO.popen("ruby abc114/A.rb", "w+")
    io.puts("6\n")
    io.close_write
    expect(io.readlines.join).to eq("NO\n")
  end

end
