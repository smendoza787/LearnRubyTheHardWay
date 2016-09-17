# This line is assigning the FIRST argument that is passed through the variable "filename"
filename = ARGV.first
# This line is assigning the FILE of the variable filename to the variable txt
txt = open(filename)
# This prints out a message, then it uses the .read command to display the contents of the file
puts "Here's your file #{filename}:"
print txt.read

print "Type the filename again: "
file_again = $stdin.gets.chomp

txt_again = open(file_again)

print txt_again.read