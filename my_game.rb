class Scene
  def enter()
    puts "This scene is not yet configured. Subclass it and implement enter()."
  end
end

class Engine
end

class Timeout < Scene
end

class PlanetPapillon < Scene
end

class BlueSpaceship < Scene
end

class PlanetPark < Scene
end

class TruthFountain < Scene
end

class Finished < Scene
end

class Map
end
