def helloworld
  array = gets.split().map(&:to_i)


  1.upto(array.length-1) do |i|
    array[i] += array[i-1] 
  end

  pp array
end
