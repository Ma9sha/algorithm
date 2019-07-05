require 'benchmark'
require 'json'
#require 'csv'

def reverse_num(number)
  num = [number]
  total = 0
  i = 1
  while i <= 10 do
  total_time = Benchmark.realtime {num.reverse}
  total += total_time
  i += 1
  end
  average_time = total / 10.0 
  return average_time*1000
end

i = 5000
arr = []
  while i <= 100000 do
    average_time = reverse_num(i)
    val_hash = {
    "x" => i,
    "y" => average_time
    }
    arr << val_hash
    i += 5000
    File.write("data.json", arr.to_json)

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