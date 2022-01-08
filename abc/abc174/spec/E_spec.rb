require 'rspec'

RSpec.describe 'test' do
  it 'test with "2 3\n7 9\n"' do
    io = IO.popen("ruby abc174/E.rb", "w+")
    io.puts("2 3\n7 9\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

  it 'test with "3 0\n3 4 5\n"' do
    io = IO.popen("ruby abc174/E.rb", "w+")
    io.puts("3 0\n3 4 5\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n")
  end

  it 'test with "10 10\n158260522 877914575 602436426 24979445 861648772 623690081 433933447 476190629 262703497 211047202\n"' do
    io = IO.popen("ruby abc174/E.rb", "w+")
    io.puts("10 10\n158260522 877914575 602436426 24979445 861648772 623690081 433933447 476190629 262703497 211047202\n")
    io.close_write
    expect(io.readlines.join).to eq("292638192\n")
  end

end
