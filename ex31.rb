puts "You enter a dark room with three doors. Do you go through door #1, #2 or #3?"

print "> "
door = gets.chomp

if door == "1"
	puts "There's a giant bear here eating a cheese cake. What do you do?"
	puts "1. Take the cake."
	puts "2. Scream at the bear."
	
	print "> "
	bear = gets.chomp
	
	if bear == "1"
		puts "The bear eats your face off. Good job!"
	elsif bear == "2"
		puts "The bear eats your legs off. Good job!"
	else
		puts "Well, doing %s is probably better. Bear runs away." % bear
	end
	
elsif door == "2"
	puts "You stare into the endless abyss at Cthulhu's retina."
	puts "1. Blueberries."
	puts "2. Yellow jacket clothespins."
	puts "3. Understanding revolvers yelling melodies."
	
	print "> "
	insanity = gets.chomp
	
	if insanity == "1" || insanity == "2"
		puts "Your body survives powered by a mind of jello. Good job!"
	else
		puts "The insanity rots your eyes into a pool of much. Good job!"
	end
	
elsif door == "3"
	puts "You walk into a dimly lit room nothing but a chair facing the opposite way, and a dark figure sitting in it. The door behind you closes.... what do you do?"
	puts "1. Scream 'HOWDY!?'"
	puts "2. Walk up to the chair and turn it around while hoping for the best."
	puts "3. Back up while simultaneously GTFO'ing outta there."
	
	print "> "
	dark_room = gets.chomp
	
	if dark_room == "1" || dark_room == "2"
		puts "@&$#$*THEDARKLORDRISESANDREACHESFORYOURTHROA-..."
	elsif dark_room == "3"
		puts "You have no idea what just happened but are glad to be out of there ali-...3$@%&SOMETHINGGRABSYOUR LEG AND YOU HAEAR A GROWLL>@1..."
	end

else
	puts "You stumble around and fall on a knife and die. Good job!"
end