require 'rspec'

RSpec.describe 'test' do
  it 'test with "sippuu\n"' do
    io = IO.popen("ruby abc160/A.rb", "w+")
    io.puts("sippuu\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "iphone\n"' do
    io = IO.popen("ruby abc160/A.rb", "w+")
    io.puts("iphone\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

  it 'test with "coffee\n"' do
    io = IO.popen("ruby abc160/A.rb", "w+")
    io.puts("coffee\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

end
