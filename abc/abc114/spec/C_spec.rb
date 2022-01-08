require 'rspec'

RSpec.describe 'test' do
  it 'test with "575\n"' do
    io = IO.popen("ruby abc114/C.rb", "w+")
    io.puts("575\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

  it 'test with "3600\n"' do
    io = IO.popen("ruby abc114/C.rb", "w+")
    io.puts("3600\n")
    io.close_write
    expect(io.readlines.join).to eq("13\n")
  end

  it 'test with "999999999\n"' do
    io = IO.popen("ruby abc114/C.rb", "w+")
    io.puts("999999999\n")
    io.close_write
    expect(io.readlines.join).to eq("26484\n")
  end

end
