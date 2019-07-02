require 'benchmark'
start_time = Time.now
def reverse_string(string)
  string = string.split("")
  reversed = []
  string.each do |i|
    reversed.unshift(i)
  end
  return reversed.join("")
end
# puts reverse_string('Manisha')
end_time = Time.now
puts "time taken to reverse a string #{(end_time - start_time)}"
  



