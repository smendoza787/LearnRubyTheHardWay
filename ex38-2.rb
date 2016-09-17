stuff = ["lamp", "printer", "bong", "dog", "ball"]

more_stuff = ["book", "shoes", "lotion", "desk", "water", "laptop"]

puts "Right now our list is looking like this:"
puts stuff

puts "But we could be adding all this other stuff to our list:"
puts more_stuff

puts "That's alot of stuff!"
puts "So we're going to add those things one at a time now from front to back."

while stuff.length != 11
  upcoming = more_stuff.shift
  puts "Now adding: #{upcoming}"
  stuff.push(upcoming)
end

puts "Sweet, now our full list is looking like:"
puts stuff
