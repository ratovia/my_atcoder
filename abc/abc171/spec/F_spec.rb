require 'rspec'

RSpec.describe 'test' do
  it 'test with "5\noof\n"' do
    io = IO.popen("ruby abc171/F.rb", "w+")
    io.puts("5\noof\n")
    io.close_write
    expect(io.readlines.join).to eq("575111451\n")
  end

  it 'test with "37564\nwhydidyoudesertme\n"' do
    io = IO.popen("ruby abc171/F.rb", "w+")
    io.puts("37564\nwhydidyoudesertme\n")
    io.close_write
    expect(io.readlines.join).to eq("318008117\n")
  end

end
