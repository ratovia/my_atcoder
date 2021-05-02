require 'rspec'

RSpec.describe 'test' do
  it 'test with "36\n"' do
    io = IO.popen("ruby abc155/E.rb", "w+")
    io.puts("36\n")
    io.close_write
    expect(io.readlines.join).to eq("8\n")
  end

  it 'test with "91\n"' do
    io = IO.popen("ruby abc155/E.rb", "w+")
    io.puts("91\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "314159265358979323846264338327950288419716939937551058209749445923078164062862089986280348253421170\n"' do
    io = IO.popen("ruby abc155/E.rb", "w+")
    io.puts("314159265358979323846264338327950288419716939937551058209749445923078164062862089986280348253421170\n")
    io.close_write
    expect(io.readlines.join).to eq("243\n")
  end

end
