first, second, third = ARGV

puts "Your first variable is: #{first}"
puts "Your second variable is: #{second}"
puts "Your third variable is: #{third}"

# the ARGV is the "argument variable"
# this variable holds the arguments you pass to your Ruby script when you run it
# Line 1 "unpacks" ARGV, it basically says, "Take whatever is in ARGV, unpack it, and assign it to all of these varaiables on the left in order"