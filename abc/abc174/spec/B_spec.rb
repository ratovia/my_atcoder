require 'rspec'

RSpec.describe 'test' do
  it 'test with "4 5\n0 5\n-2 4\n3 4\n4 -4\n"' do
    io = IO.popen("ruby abc174/B.rb", "w+")
    io.puts("4 5\n0 5\n-2 4\n3 4\n4 -4\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "12 3\n1 1\n1 1\n1 1\n1 1\n1 2\n1 3\n2 1\n2 2\n2 3\n3 1\n3 2\n3 3\n"' do
    io = IO.popen("ruby abc174/B.rb", "w+")
    io.puts("12 3\n1 1\n1 1\n1 1\n1 1\n1 2\n1 3\n2 1\n2 2\n2 3\n3 1\n3 2\n3 3\n")
    io.close_write
    expect(io.readlines.join).to eq("7\n")
  end

  it 'test with "20 100000\n14309 -32939\n-56855 100340\n151364 25430\n103789 -113141\n147404 -136977\n-37006 -30929\n188810 -49557\n13419 70401\n-88280 165170\n-196399 137941\n-176527 -61904\n46659 115261\n-153551 114185\n98784 -6820\n94111 -86268\n-30401 61477\n-55056 7872\n5901 -163796\n138819 -185986\n-69848 -96669\n"' do
    io = IO.popen("ruby abc174/B.rb", "w+")
    io.puts("20 100000\n14309 -32939\n-56855 100340\n151364 25430\n103789 -113141\n147404 -136977\n-37006 -30929\n188810 -49557\n13419 70401\n-88280 165170\n-196399 137941\n-176527 -61904\n46659 115261\n-153551 114185\n98784 -6820\n94111 -86268\n-30401 61477\n-55056 7872\n5901 -163796\n138819 -185986\n-69848 -96669\n")
    io.close_write
    expect(io.readlines.join).to eq("6\n")
  end

end
