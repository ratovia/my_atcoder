require 'rspec'

RSpec.describe 'test' do
  it 'test with "3\n2\n1 5 10\n2 15 5\n3\n2 93 78\n1 71 59\n3 57 96\n19\n19 23 16\n5 90 13\n12 85 70\n19 67 78\n12 16 60\n18 48 28\n5 4 24\n12 97 97\n4 57 87\n19 91 74\n18 100 76\n7 86 46\n9 100 57\n3 76 73\n6 84 93\n1 6 84\n11 75 94\n19 15 3\n12 11 34\n"' do
    io = IO.popen("ruby aising2020/E.rb", "w+")
    io.puts("3\n2\n1 5 10\n2 15 5\n3\n2 93 78\n1 71 59\n3 57 96\n19\n19 23 16\n5 90 13\n12 85 70\n19 67 78\n12 16 60\n18 48 28\n5 4 24\n12 97 97\n4 57 87\n19 91 74\n18 100 76\n7 86 46\n9 100 57\n3 76 73\n6 84 93\n1 6 84\n11 75 94\n19 15 3\n12 11 34\n")
    io.close_write
    expect(io.readlines.join).to eq("25\n221\n1354\n")
  end

end
