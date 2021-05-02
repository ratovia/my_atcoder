require 'rspec'

RSpec.describe 'test' do
  it 'test with "1817181712114\n"' do
    io = IO.popen("ruby abc164/D.rb", "w+")
    io.puts("1817181712114\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "14282668646\n"' do
    io = IO.popen("ruby abc164/D.rb", "w+")
    io.puts("14282668646\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "2119\n"' do
    io = IO.popen("ruby abc164/D.rb", "w+")
    io.puts("2119\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

end
