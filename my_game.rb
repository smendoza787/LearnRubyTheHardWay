class Scene
  def enter()
    puts "This scene is not yet configured. Subclass it and implement enter()."
  end
end

class Engine
  def initialize(scene_map)
    @scene_map = scene_map
  end

  def play()
    current_scene = @scene_map.opening_scene()
    last_scene = @scene_map.next_scene('finished')

    while current_scene != last_scene
      next_scene_name = current_scene.enter()
      current_scene = @scene_map.next_scene(next_scene_name)
    end

    current_scene.enter()
  end
end

class Timeout < Scene
  @@timeouts = [
    "Do you have poop in your butt? Go in timeout.",
    "My key-key can do better than that, and she's 10! Timeout!",
    "Did you go through the trash again? Timeout!!",
    "Get inside the house....NOW! TIMEOUT!"
  ]

  def enter()
    puts @@timeouts[rand(0..(@@timeouts.length - 1))]
    exit(1)
  end
end

class PlanetPapillon < Scene
  def enter()
    puts "We begin our journey in the magical land of Planet Papillon in the SCRDY galaxy."
    puts "A planet once taken over by the intergalactic evil villain DOM.N-O."
    puts "Well...she wasn't like super evil or anything, she would just kind of"
    puts "Do whatever she wanted and never listened to anybody."
    puts "We receieve a transmission from a rather worried Corgi named Kevin..."
    puts '"Please Paps, the evil DOM.N-O has taken rest on our beloved fountain'
    puts "of truth! She won't get off the button even after luring her with"
    puts "catnip, Irrestitables, and a little bell on the end of a stick. She's"
    puts 'not falling for any of it. WE NEED YOUR HELP MO AND YIV!"'
    puts ""
    puts "Which hero will you choose to engage on this quest?"
    puts "Will you choose COSMO, the brave, sturdy and fearless Pap of the SCRDY galaxy?"
    puts "Or will you choose OLIVE, the quick and nimble little fox full of energy?"
    puts "Please choose your puppy:"

    print "> "
    $puppy = gets.chomp

    if $puppy.include? "cosmo"
      puts "You have chosen the fearless MO, good luck."
      return 'blue_spaceship'

    elsif $puppy.include? "olive"
      puts "You have chosen YIV, the cutest and most cuddly papillon in the galaxy, good luck."
      return 'blue_spaceship'

    else
      puts "That's not a puppy option."
      return 'planet_papillon'
    end
  end
end

class BlueSpaceship < Scene

  def enter()
    puts "We continue on our journey with our fearless hero as we approach the"
    puts "Big Blue Spaceship, for lack of a better name. But what is this? A"
    puts "password? I don't remember there being a passw-...a pawprint???"
    puts "That sneaky DOM.N-O must have planted this lock in the name of sabotage."
    puts "Looks like a keypad 1-9 and we have to guess a number within"
    puts "10 tries or our ship will self-destruct and we'll be sent to timeout."
    code = "#{rand(1..9)}"
    print "[keypad]> "
    guess = gets.chomp
    guesses = 0

    while guess != code && guesses < 9
      puts "BRRNTTTTTTTT WRONG!"
      guesses += 1
      print "[keypad]> "
      guess = gets.chomp
    end

    if guess == code
      puts "The lock opens up and we now have access to the spacechip."
      puts "We climb in and fire up the ship and are en route to planet P.A.R.K."
      return 'planet_park'
    else
      puts "You have exceeded the number of guesses, the ship has blown up and"
      puts "you are sent to timeout."
      return 'timeout'
    end
  end
end

class PlanetPark < Scene
  def enter()
    puts "We arrive at PARK and are greeted by Kevin the Corgi from the earlier"
    puts "transmission. Apparently he has lost his B.A.L.L. device and explains"
    puts "that it is pertinent to our mission."
    puts "\"I am pretty sure I lost it in one of these conveniently-colored bushes\""
    puts ""
    puts "We see a yellow, red, and blue bush. One of which contains the B.A.L.L"
    puts "Which color bush do you think contains the B.A.L.L.?"

    print "> "
    guess = gets.chomp
    guesses = 0

    if $puppy == "cosmo"
      puts "Being Cosmo the brave and fearless, you have very few weaknesses"
      puts "Unfortunately, the lure and outright sexual tension you have"
      puts "with the B.A.L.L. is, at the most basic level, confusing, yet real."
      puts "You've made it so far with the game just to end up in timeout."
      puts "Maybe try Olive?"
      return 'timeout'
    elsif $puppy == "olive"
      while guess != "blue" && guesses < 3 do
        puts "Nope, wrong bush!"
        guesses += 1
        print "> "
        guess = gets.chomp
      end

      if guess == "blue"
        puts "You lunge forward into the blue bush and hop right back out with"
        puts "the B.A.L.L. device. Kevin is forever in your debt, and you are"
        puts "one more step from saving the planet. You continue on to the"
        puts "Fountain of truth!"
        return 'fountain_of_truth'
      else
        puts "You took so much time in guessing DOM.N-O has snatched the B.A.L.L."
        puts "and has any sliver of hope remaining for the universe is vanquished."
        return 'timeout'
      end
    end
  end
end

class FountainOfTruth < Scene
  def enter()
    puts "You walk up near the gates of the fountain, and look on to see a giant,"
    puts "furry, soft, purring kitty to be sitting right on top of the giant button"
    puts "that is used to turn the fountain on (think Mad Max style) for the residents"
    puts "of Planet P.A.R.K."

    puts "You have an idea!"
    puts "You know how kitties love being scratched in all the right places."
    puts "We will only have one shot to do this so we need to pick right, where"
    puts "should we pet this kitty?"
    puts "neck?"
    puts "hip?"
    puts "forehead?"

    print "> "
    answer = gets.chomp

    if answer == "forehead" || answer == "neck"
      puts "She lets out a supersonic meow that pierces the souls of millions"
      puts "Everyone dies."
      return 'timeout'
    elsif answer == "hip"
      puts "You pet her hip, she lets out a fierce groan and gets up."
      puts "You did it!"
      return 'finished'
    else
      puts "That isn't the right answer. She scratches your face off and you die."
      return 'timeout'
    end
  end
end

class Finished < Scene
  def enter()
    puts "You won! Good job."
  end
end

class Map

  @@scenes = {
    'planet_papillon' => PlanetPapillon.new(),
    'blue_spaceship' => BlueSpaceship.new(),
    'planet_park' => PlanetPark.new(),
    'fountain_of_truth' => FountainOfTruth.new(),
    'finished' => Finished.new(),
    'timeout' => Timeout.new(),
  }

  def initialize(start_scene)
    @start_scene = start_scene
  end

  def next_scene(scene_name)
    val = @@scenes[scene_name]
    return val
  end

  def opening_scene()
    return next_scene(@start_scene)
  end
end

a_map = Map.new('planet_papillon')
a_game = Engine.new(a_map)
a_game.play()
