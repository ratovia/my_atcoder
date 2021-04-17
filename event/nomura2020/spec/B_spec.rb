require 'rspec'

RSpec.describe 'test' do
  it 'test with "PD?D??P\n"' do
    io = IO.popen("ruby nomura2020/B.rb", "w+")
    io.puts("PD?D??P\n")
    io.close_write
    expect(io.readlines.join).to eq("PDPDPDP\n")
  end

  it 'test with "P?P?\n"' do
    io = IO.popen("ruby nomura2020/B.rb", "w+")
    io.puts("P?P?\n")
    io.close_write
    expect(io.readlines.join).to eq("PDPD\n")
  end

end
