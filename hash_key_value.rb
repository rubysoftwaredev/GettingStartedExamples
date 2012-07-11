#!/usr/bin/ruby

## hash key syntax

begin
grades = { "Bob" => 82,
         "Jim" => 93,
         "Jay" => 88
       }

grades.each do |name,grade|
  puts "#{name}: #{grade}"
end

puts grades["Jim"]
puts grades["Ru"]

rescue => err
  puts "Exception in reading hash :#{err}"
  err

end

##===============
h1 = Hash.new

h1['red'] = "House of Enterprise"
h1['blue'] = "House of Integrity"
h1['yellow']  = "House of Endurance"

puts(h1['red'])
puts(h1.keys)
puts (h1.values)

# reads the entire file
input_data=File.read("simple_prog.rb")
puts(input_data)

