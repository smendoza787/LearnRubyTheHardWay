class Song

  def initialize(lyrics)
    @lyrics = lyrics
  end

  def sing_me_a_song()
    @lyrics.each {|line| puts line }
  end
end

cw_lyrics = ["I'm never gonna dance again",
            "Guilty feet have got no rhythm",
            "I'm never gonna dance again",
            "They way I danced with yooooouuuuuuu"]

careless_whisper = Song.new(cw_lyrics)

careless_whisper.sing_me_a_song()
