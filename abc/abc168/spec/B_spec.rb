require 'rspec'

RSpec.describe 'test' do
  it 'test with "7\nnikoandsolstice\n"' do
    io = IO.popen("ruby abc168/B.rb", "w+")
    io.puts("7\nnikoandsolstice\n")
    io.close_write
    expect(io.readlines.join).to eq("nikoand...\n")
  end

  it 'test with "40\nferelibenterhominesidquodvoluntcredunt\n"' do
    io = IO.popen("ruby abc168/B.rb", "w+")
    io.puts("40\nferelibenterhominesidquodvoluntcredunt\n")
    io.close_write
    expect(io.readlines.join).to eq("ferelibenterhominesidquodvoluntcredunt\n")
  end

end
