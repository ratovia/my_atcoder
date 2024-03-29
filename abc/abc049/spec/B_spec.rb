require 'rspec'

RSpec.describe 'test' do
  it 'test with "2 2\n*.\n.*\n"' do
    io = IO.popen("ruby abc049/B.rb", "w+")
    io.puts("2 2\n*.\n.*\n")
    io.close_write
    expect(io.readlines.join).to eq("*.\n*.\n.*\n.*\n")
  end

  it 'test with "1 4\n***.\n"' do
    io = IO.popen("ruby abc049/B.rb", "w+")
    io.puts("1 4\n***.\n")
    io.close_write
    expect(io.readlines.join).to eq("***.\n***.\n")
  end

  it 'test with "9 20\n.....***....***.....\n....*...*..*...*....\n...*.....**.....*...\n...*.....*......*...\n....*.....*....*....\n.....**..*...**.....\n.......*..*.*.......\n........**.*........\n.........**.........\n"' do
    io = IO.popen("ruby abc049/B.rb", "w+")
    io.puts("9 20\n.....***....***.....\n....*...*..*...*....\n...*.....**.....*...\n...*.....*......*...\n....*.....*....*....\n.....**..*...**.....\n.......*..*.*.......\n........**.*........\n.........**.........\n")
    io.close_write
    expect(io.readlines.join).to eq(".....***....***.....\n.....***....***.....\n....*...*..*...*....\n....*...*..*...*....\n...*.....**.....*...\n...*.....**.....*...\n...*.....*......*...\n...*.....*......*...\n....*.....*....*....\n....*.....*....*....\n.....**..*...**.....\n.....**..*...**.....\n.......*..*.*.......\n.......*..*.*.......\n........**.*........\n........**.*........\n.........**.........\n.........**.........\n")
  end

end
