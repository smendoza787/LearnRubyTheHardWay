#This line assigns the name of the file we are going to edit to the variable filename
filename = ARGV.first
# This is just printing out a bunch of stuff
puts "We're going to erase #{filename}"
puts "If you don't want that, hit CTRL-C (^C)."
puts "If you do want that, hit RETURN."

$stdin.gets
# This opens our file, then passing in a w lets the open command know you want to "write" to it
puts "Opening the file..."
target = open(filename, 'w')
# this ling erases everything inside that file
puts "Truncating the file. Goodbye!"
target.truncate(0)

puts "Now I'm going to ask you for three lines."
# this asks you for each line and assigns each line as a variable that will later be printed to the document
print "line 1: "
line1 = $stdin.gets.chomp
print "line 2: "
line2 = $stdin.gets.chomp
print "line 3: "
line3 = $stdin.gets.chomp

puts "I'm going to write these to the file."
# these lines call the write function to target, which was earlier assigned to our file
target.write(line1)
target.write("\n")
target.write(line2)
target.write("\n")
target.write(line3)
target.write("\n")
# this closes our file
puts "And finally, we close it."
target.close




# Here is a list of commands that we can give to files
# close -- closes the file, like saving it
# read -- reads the contents of the file, you can assign the result to a variable
# readline -- reads just one line of a text file
# truncate -- empties the file, watch out if you care about the file
# write('stuff') -- writes "stuff" to the file