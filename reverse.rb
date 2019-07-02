require 'benchmark'
require 'json'
#require 'csv'

def reverse_num(number)
  num = [number]
  total_time = 10.times { Benchmark.realtime{num.reverse} }
  average_time = total_time/10.0
  return average_time
  # puts "time taken to reverse #{average_time*1000}"
end

i = 5000
File.open("reverse.json", "w") do |j|
  while i <= 100000 do
    average_time = reverse_num(i)
    x = i
    y = average_time
    j.write("range": x, "time_taken": y)
    i += 5000
  end
end


# i = 5000
# CSV.open("reverve.csv", "w") do |csv|
# csv << ["range", "time_taken"]
# while i < 100000 do
#   average_time = reverse_num(i)
#     x = i
#     y = average_time
#     csv << [x, y]
#     i += 5000
#     end
# end