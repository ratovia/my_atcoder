require 'rspec'

RSpec.describe 'test' do
  it 'test with "4 1 3\n"' do
    io = IO.popen("ruby abc156/D.rb", "w+")
    io.puts("4 1 3\n")
    io.close_write
    expect(io.readlines.join).to eq("7\n")
  end

  it 'test with "1000000000 141421 173205\n"' do
    io = IO.popen("ruby abc156/D.rb", "w+")
    io.puts("1000000000 141421 173205\n")
    io.close_write
    expect(io.readlines.join).to eq("34076506\n")
  end

end
