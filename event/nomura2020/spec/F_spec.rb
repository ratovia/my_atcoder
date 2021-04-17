require 'rspec'

RSpec.describe 'test' do
  it 'test with "2 5\n"' do
    io = IO.popen("ruby nomura2020/F.rb", "w+")
    io.puts("2 5\n")
    io.close_write
    expect(io.readlines.join).to eq("352\n")
  end

  it 'test with "2020 530\n"' do
    io = IO.popen("ruby nomura2020/F.rb", "w+")
    io.puts("2020 530\n")
    io.close_write
    expect(io.readlines.join).to eq("823277409\n")
  end

end
