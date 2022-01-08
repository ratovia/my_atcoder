require 'rspec'

RSpec.describe 'test' do
  it 'test with "3\n1 2\n2 3\n3 4\n3\n1 1\n2 5\n3 5\n"' do
    io = IO.popen("ruby tokiomarine2020/D.rb", "w+")
    io.puts("3\n1 2\n2 3\n3 4\n3\n1 1\n2 5\n3 5\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n3\n3\n")
  end

  it 'test with "15\n123 119\n129 120\n132 112\n126 109\n118 103\n115 109\n102 100\n130 120\n105 105\n132 115\n104 102\n107 107\n127 116\n121 104\n121 115\n8\n8 234\n9 244\n10 226\n11 227\n12 240\n13 237\n14 206\n15 227\n"' do
    io = IO.popen("ruby tokiomarine2020/D.rb", "w+")
    io.puts("15\n123 119\n129 120\n132 112\n126 109\n118 103\n115 109\n102 100\n130 120\n105 105\n132 115\n104 102\n107 107\n127 116\n121 104\n121 115\n8\n8 234\n9 244\n10 226\n11 227\n12 240\n13 237\n14 206\n15 227\n")
    io.close_write
    expect(io.readlines.join).to eq("256\n255\n250\n247\n255\n259\n223\n253\n")
  end

end
