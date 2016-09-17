# This will print the text along with a little excitement
def woo(text)
  puts text, "Woo!"
end

#This will print whenever received input is not recognized
def wrong
  puts "That isn't an option."
end

# These are options for the left_baby
def mercedes
  woo("It turns out to be a self-driving car and drops you off at home.")
end

def bmw
  woo("The BMW turns out to be a self-driving car and drives you off a bridge!")
end

def left_baby
  puts "The baby turns into a portal and drops you in Hong Kong."
  puts "A man walks up to you and hands you the keys to 2 luxury vehicles."
  puts "Which do you take, the BMW? or the MERCEDES?"

  print "> "
  sportscar = gets.chomp

  if sportscar.include? "bmw"
    bmw
  elsif sportscar.include? "mercedes"
    mercedes
  else
    wrong
    left_baby
  end
end

def right_baby
  puts "The right baby jumps out of your arms, and begins to speak..."
  puts "He tells you that this is all a dream, and then extends both hands towards you."
  puts "There is a BLUE pill and a RED pill. Which one do you take?"

  print "> "
  pill = gets.chomp

  if pill.include? "blue"
    puts "You wake up, laying in bed in a cold sweat."
    puts "It's 3:33AM, what just happened?"
  elsif pill.include? "red"
    puts "You start to choke...everything goes dark..."
    woo("You die.")
  else
    wrong
    right_baby
  end
end

def start
  puts "You wake up in a  dark room with two crying babies."
  puts "You have no idea where you are, and they are begging to be cradled."
  puts "Which baby do you pick up, the one on the LEFT or the RIGHT?"

  print "> "
  baby = gets.chomp

  if baby.include? "left"
    left_baby
  elsif baby.include? "right"
    right_baby
  else
    wrong
    start
  end
end

start
