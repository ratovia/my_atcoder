require 'rspec'

RSpec.describe 'test' do
  it 'test with "117\n"' do
    io = IO.popen("ruby abc162/A.rb", "w+")
    io.puts("117\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "123\n"' do
    io = IO.popen("ruby abc162/A.rb", "w+")
    io.puts("123\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

  it 'test with "777\n"' do
    io = IO.popen("ruby abc162/A.rb", "w+")
    io.puts("777\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

end
