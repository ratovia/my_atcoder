require 'rspec'

RSpec.describe 'test' do
  it 'test with "4 5\n3 2 4 1\n"' do
    io = IO.popen("ruby abc167/D.rb", "w+")
    io.puts("4 5\n3 2 4 1\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

  it 'test with "6 727202214173249351\n6 5 2 5 3 2\n"' do
    io = IO.popen("ruby abc167/D.rb", "w+")
    io.puts("6 727202214173249351\n6 5 2 5 3 2\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

end
