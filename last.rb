require 'benchmark'
require 'csv'

def last_value(number)
  list = [number]
  total = 0
  i = 1
  while i <= 10 do
  total_time = Benchmark.realtime {list.last}
  total += total_time
  i += 1
  end
  average_time = total / 10.0 
  return average_time*1000
end

i = 5000
CSV.open("last.csv", "w") do |csv|
csv << ["range", "time_taken"]
while i < 100000 do
  average_time = last_value(i)
    x = i
    y = average_time
    csv << [x, y]
    i += 5000
    end
end

