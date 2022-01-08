require 'rspec'

RSpec.describe 'test' do
  it 'test with "a\n"' do
    io = IO.popen("ruby abc049/A.rb", "w+")
    io.puts("a\n")
    io.close_write
    expect(io.readlines.join).to eq("vowel\n")
  end

  it 'test with "z\n"' do
    io = IO.popen("ruby abc049/A.rb", "w+")
    io.puts("z\n")
    io.close_write
    expect(io.readlines.join).to eq("consonant\n")
  end

  it 'test with "s\n"' do
    io = IO.popen("ruby abc049/A.rb", "w+")
    io.puts("s\n")
    io.close_write
    expect(io.readlines.join).to eq("consonant\n")
  end

end
