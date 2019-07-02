require 'benchmark'
require 'csv'

def last_value(number)
  list = [1]
  list1 = list * number
  total_time = 10.times { Benchmark.realtime {list1.last} }
  average_time = total_time / 10.0
  # puts "Time taken to show the last element #{time*1000} seconds"
  return average_time.round(4)
end

i = 5000
CSV.open("file.csv", "w") do |csv|
csv << ["range", "time_taken"]
while i < 100000 do
  average_time = last_value(i)
    x = i
    y = average_time
    csv << [x, y]
    i += 5000
    end
end

