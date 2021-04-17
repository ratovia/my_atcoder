require 'rspec'

RSpec.describe 'test' do
  it 'test with "takahashi\n"' do
    io = IO.popen("ruby tokiomarine2020/A.rb", "w+")
    io.puts("takahashi\n")
    io.close_write
    expect(io.readlines.join).to eq("tak\n")
  end

  it 'test with "naohiro\n"' do
    io = IO.popen("ruby tokiomarine2020/A.rb", "w+")
    io.puts("naohiro\n")
    io.close_write
    expect(io.readlines.join).to eq("nao\n")
  end

end
