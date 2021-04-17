require 'rspec'

RSpec.describe 'test' do
  it 'test with "1 2\n3 1\n3\n"' do
    io = IO.popen("ruby tokiomarine2020/B.rb", "w+")
    io.puts("1 2\n3 1\n3\n")
    io.close_write
    expect(io.readlines.join).to eq("YES\n")
  end

  it 'test with "1 2\n3 2\n3\n"' do
    io = IO.popen("ruby tokiomarine2020/B.rb", "w+")
    io.puts("1 2\n3 2\n3\n")
    io.close_write
    expect(io.readlines.join).to eq("NO\n")
  end

  it 'test with "1 2\n3 3\n3\n"' do
    io = IO.popen("ruby tokiomarine2020/B.rb", "w+")
    io.puts("1 2\n3 3\n3\n")
    io.close_write
    expect(io.readlines.join).to eq("NO\n")
  end

end
