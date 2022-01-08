require 'rspec'

RSpec.describe 'test' do
  it 'test with "3 2\n1 2 3\n2 2 2\n1 2\n2 3\n"' do
    io = IO.popen("ruby arc106/B.rb", "w+")
    io.puts("3 2\n1 2 3\n2 2 2\n1 2\n2 3\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "1 0\n5\n5\n"' do
    io = IO.popen("ruby arc106/B.rb", "w+")
    io.puts("1 0\n5\n5\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "2 1\n1 1\n2 1\n1 2\n"' do
    io = IO.popen("ruby arc106/B.rb", "w+")
    io.puts("2 1\n1 1\n2 1\n1 2\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

  it 'test with "17 9\n-905371741 -999219903 969314057 -989982132 -87720225 -175700172 -993990465 929461728 895449935 -999016241 782467448 -906404298 578539175 9684413 -619191091 -952046546 125053320\n-440503430 -997661446 -912471383 -995879434 932992245 -928388880 -616761933 929461728 210953513 -994677396 648190629 -530944122 578539175 9684413 595786809 -952046546 125053320\n2 10\n6 12\n9 11\n11 5\n7 6\n3 15\n3 1\n1 9\n10 4\n"' do
    io = IO.popen("ruby arc106/B.rb", "w+")
    io.puts("17 9\n-905371741 -999219903 969314057 -989982132 -87720225 -175700172 -993990465 929461728 895449935 -999016241 782467448 -906404298 578539175 9684413 -619191091 -952046546 125053320\n-440503430 -997661446 -912471383 -995879434 932992245 -928388880 -616761933 929461728 210953513 -994677396 648190629 -530944122 578539175 9684413 595786809 -952046546 125053320\n2 10\n6 12\n9 11\n11 5\n7 6\n3 15\n3 1\n1 9\n10 4\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

end
