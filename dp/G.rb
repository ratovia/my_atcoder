### SNIPPET
  # n = gets.split.map(&:to_i)
  # array = n.times.map { gets.split.map(&:to_i) }
  # [].all?(&:even?)
  # a = [*1..m].repeated_combination(n).to_a
  # [1,2,3,4,5].select { |num| num.even? }  # => [2, 4]
  # ["a","a","b"].group_by(&:itself).map{|k,v| [k, v.count]}.to_h #=> {"a"=>2, "b"=>1}
  # 切り捨て: .floor(2).to_f ,切り上げ： .ceil(2).to_f,四捨五入: round(2)
  # 3.upto(6) do |i|, 6.downto(3) do |i|
  # 公約数125.gcd(100)、公倍数125.lcm(100)
  # PI = Math::PI
  # 高さ = a * Math.sin(w / 180.0 * Math::PI), 底辺 = a * Math.cos(w / 180.0 * Math::PI)
  # def chmax(a, b) a > b ? a : b end
  # INF = Float::INFINITY
  # def chmin(a, b) a < b ? a : b end

  # n,m =  gets.split.map(&:to_i)
  # graph = []
  # m.times { graph << gets.split.map(&:to_i)}
  
  # @memo = Array.new(n,0)

  # no_in_vert =[*1..n] - graph.map{|_,v|v}

  # no_in_vert.each do |ele|
  #   @memo[ele] = 1
  #   solve(ele)
  # end




  # def solve(ele)




  def tps(n,inCnt,out)
    s = []
    ret = []
    n.times do |i|
      s << i if inCnt[i] == 0
    end
    while v = s.shift
      ret << v
      #tの出力辺とその先のノードmを見て、辺を削除
      #mが入力辺を持っていない=mの最後の入力がtならm追加
      out[v].each do |m|
        inCnt[m] -= 1
        s << m if inCnt[m] == 0
      end
    end
    return ret
  end
  require 'pry'
  N,M = gets.split.map(&:to_i)
  dp = [0]*(N+1)
  cnt= [0]*(N+1)
  cnt[0] = -1
  
  vin = (N+1).times.map{[]}
  vout = (N+1).times.map{[]}
  
  M.times do
    x,y = gets.split.map(&:to_i)
    cnt[y] += 1
    vin[y] << x
    vout[x] << y
  end
  binding.pry
   
  list = tps(N+1,cnt,vout)
   
  list.each do |t|
    max = -1
    vin[t].each do |j|
      max = dp[j] if max < dp[j]
    end
    dp[t] = max+1
    #p [t,vin[t],dp[t]]
  end
  p dp.max

