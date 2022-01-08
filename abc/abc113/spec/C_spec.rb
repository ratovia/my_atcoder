require 'rspec'

RSpec.describe 'test' do
  it 'test with "2 3\n1 32\n2 63\n1 12\n"' do
    io = IO.popen("ruby abc113/C.rb", "w+")
    io.puts("2 3\n1 32\n2 63\n1 12\n")
    io.close_write
    expect(io.readlines.join).to eq("000001000002\n000002000001\n000001000001\n")
  end

  it 'test with "2 3\n2 55\n2 77\n2 99\n"' do
    io = IO.popen("ruby abc113/C.rb", "w+")
    io.puts("2 3\n2 55\n2 77\n2 99\n")
    io.close_write
    expect(io.readlines.join).to eq("000002000001\n000002000002\n000002000003\n")
  end

end
