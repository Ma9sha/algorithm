require 'benchmark'
require 'json'

def reverse(number)
  num = number
  time = Benchmark.realtime {num.reverse}
  puts "time taken to reverse #{time*1000}"
  print num.reverse
end
num = [1,5,9,3,7,40,67]
reverse(num)