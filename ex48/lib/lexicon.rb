class Lexicon
  def self.scan(word)
    # here is a hash with the key/value pair of directions
    foo = {
      'north' => 'direction',
      'south' => 'direction',
      'east' => 'direction',
      'west' => 'direction',
      'go' => 'verb',
      'kill' => 'verb',
      'eat' => 'verb',
      'the' => 'stop',
      'in' => 'stop',
      'of' => 'stop',
      'bear' => 'noun',
      'princess' => 'noun',
    }

    #scan should split the word (this will create an array of words)
    word_array = word.split()
    # => ['word', 'word', 'word']
    new_array = []
    word_array.each do |word|
      # number converter test
      def convert_number(object)
        begin
          return Integer(object)
        rescue
          return nil
        end
      end
    # this should take each word, and use the foo hash to call its value and return an array with the word and value
      numtest = convert_number(word)
      if numtest == true
        numbers = ['numbers', word]
        new_array.push(numbers)
      else
        pair = [foo[word], word]
        new_array.push(pair)
      end
    end
    return new_array
  end
end
