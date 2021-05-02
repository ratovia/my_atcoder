require 'rspec'

RSpec.describe 'test' do
  it 'test with "5\n4 2 6 3 5\n1 1 1 1 1\n"' do
    io = IO.popen("ruby agc044/E.rb", "w+")
    io.puts("5\n4 2 6 3 5\n1 1 1 1 1\n")
    io.close_write
    expect(io.readlines.join).to eq("4.700000000000\n")
  end

  it 'test with "4\n100 0 100 0\n0 100 0 100\n"' do
    io = IO.popen("ruby agc044/E.rb", "w+")
    io.puts("4\n100 0 100 0\n0 100 0 100\n")
    io.close_write
    expect(io.readlines.join).to eq("50.000000000000\n")
  end

  it 'test with "14\n4839 5400 6231 5800 6001 5200 6350 7133 7986 8012 7537 7013 6477 5912\n34 54 61 32 52 61 21 43 65 12 45 21 1 4\n"' do
    io = IO.popen("ruby agc044/E.rb", "w+")
    io.puts("14\n4839 5400 6231 5800 6001 5200 6350 7133 7986 8012 7537 7013 6477 5912\n34 54 61 32 52 61 21 43 65 12 45 21 1 4\n")
    io.close_write
    expect(io.readlines.join).to eq("7047.142857142857\n")
  end

  it 'test with "10\n470606482521 533212137322 116718867454 746976621474 457112271419 815899162072 641324977314 88281100571 9231169966 455007126951\n26 83 30 59 100 88 84 91 54 61\n"' do
    io = IO.popen("ruby agc044/E.rb", "w+")
    io.puts("10\n470606482521 533212137322 116718867454 746976621474 457112271419 815899162072 641324977314 88281100571 9231169966 455007126951\n26 83 30 59 100 88 84 91 54 61\n")
    io.close_write
    expect(io.readlines.join).to eq("815899161079.400024414062\n")
  end

end
