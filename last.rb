require 'benchmark'
require 'csv'

# def Last_Value(number)

#   startTime = Time.now
  
#     list = Array.new(number)
   
#     puts "*****"
#     puts list.length
#     puts "££££££"
#     puts list.last
#     puts "@@@@@@"

#   endTime = Time.now
#   puts "Duration time #{(endTime - startTime)*10000} seconds"
# end

# # Last_Value(5000)


# def Last_Value(number)


def last_value(number)
  list = [1]
  list1 = list * number
  time = Benchmark.realtime {list1.last}
  # puts "Time taken to show the last element #{time*1000} seconds"
  return ((time*100.0).round(4))
end
x = []
y = []
i = 5000
while i < 100000 do
  time = last_value(i)
  CSV.open("file.csv", "w") do |csv|
    x << time
    y << i
    csv << ["time_taken", "range"]
    csv << [x, y]
    i += 5000
    end
end
# puts x
# puts y

# CSV.open("file.csv", "w")do |csv|
# csv << ["time_taken", "range"]
# csv << ["x", "y"]
# end