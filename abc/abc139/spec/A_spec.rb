require 'rspec'

RSpec.describe 'test' do
  it 'test with "CSS\nCSR\n"' do
    io = IO.popen("ruby abc139/A.rb", "w+")
    io.puts("CSS\nCSR\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "SSR\nSSR\n"' do
    io = IO.popen("ruby abc139/A.rb", "w+")
    io.puts("SSR\nSSR\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "RRR\nSSS\n"' do
    io = IO.popen("ruby abc139/A.rb", "w+")
    io.puts("RRR\nSSS\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

end
