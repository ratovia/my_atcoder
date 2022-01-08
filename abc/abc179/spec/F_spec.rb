require 'rspec'

RSpec.describe 'test' do
  it 'test with "5 5\n1 3\n2 3\n1 4\n2 2\n1 2\n"' do
    io = IO.popen("ruby abc179/F.rb", "w+")
    io.puts("5 5\n1 3\n2 3\n1 4\n2 2\n1 2\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "200000 0\n"' do
    io = IO.popen("ruby abc179/F.rb", "w+")
    io.puts("200000 0\n")
    io.close_write
    expect(io.readlines.join).to eq("39999200004\n")
  end

  it 'test with "176527 15\n1 81279\n2 22308\n2 133061\n1 80744\n2 44603\n1 170938\n2 139754\n2 15220\n1 172794\n1 159290\n2 156968\n1 56426\n2 77429\n1 97459\n2 71282\n"' do
    io = IO.popen("ruby abc179/F.rb", "w+")
    io.puts("176527 15\n1 81279\n2 22308\n2 133061\n1 80744\n2 44603\n1 170938\n2 139754\n2 15220\n1 172794\n1 159290\n2 156968\n1 56426\n2 77429\n1 97459\n2 71282\n")
    io.close_write
    expect(io.readlines.join).to eq("31159505795\n")
  end

end
