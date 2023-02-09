require 'pry'
class Anagram
    def initialize(word)
      @word = word
    end
  
    def match(possible_anagrams)
      possible_anagrams.select { |p| anagram?(p) }
    end
  
    def anagram?(possible_anagram)
      possible_anagram != @word && possible_anagram.chars.sort == @word.chars.sort
    end
  end
listen = Anagram.new("listen")
listen.match(%w[enlists google inlets banana])

