n,m,T = gets.split.map(&:to_i)

array = m.times.map { gets.split.map(&:to_i) }

@current = n
t = 0
@flag = true

def check
  # puts @current
  if @current < 1
    @flag = false
  end
end

array.each do |ele|
  start_t = ele[0]
  end_t = ele[1]

  dec_t = start_t - t
  
  @current -= dec_t
  check()
  
  inc_t = end_t - start_t 

  @current += inc_t
  @current = n if @current > n
  check()

  t = end_t
end

dec_t = T - t
@current -= dec_t
check()

# puts @flag
puts @flag ? "Yes" : "No"